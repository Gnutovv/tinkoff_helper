import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/add_expert_position_screen.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/expert_settings_screen.dart';

class ExpertScreen extends StatefulWidget {
  const ExpertScreen({super.key});

  @override
  State<ExpertScreen> createState() => _ExpertScreenState();
}

class _ExpertScreenState extends State<ExpertScreen> {
  @override
  void initState() {
    super.initState();
    if (context.read<ExpertBloc>().state.expertPositions.isEmpty) {
      context.read<ExpertBloc>().add(const ExpertEvent.init());
    }
  }

  @override
  Widget build(BuildContext context) {
    final loaderController = getIt<LoaderController>();
    final bloc = context.read<ExpertBloc>();
    const tabElementsStyle = TextStyle(fontWeight: FontWeight.bold);

    return BlocConsumer<ExpertBloc, ExpertState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: (_, __) => loaderController.startLoading(),
          orElse: () => loaderController.stopLoading(),
        );
        state.mapOrNull(
          error: (state) => showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(state.message),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          ),
          expertPositionRemoved: (state) => showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Позиция удалена'),
                content: Text(state.removedPosition.instrument.title),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
      builder: (context, state) => state.maybeWhen(
        notInitialized: (balancer, _, positions) => Center(
          child: ElevatedButton(
            onPressed: () => bloc.add(const ExpertEvent.init()),
            child: const Text('Загрузить данные'),
          ),
        ),
        orElse: () => CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CardItemWidget(
                    label: const Text(
                      'Эксперт',
                      style: tabElementsStyle,
                    ),
                    content: [
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Новых рекомендаций:'),
                          Text(
                            state.expertPositions.isNotEmpty
                                ? state.expertPositions.where((element) => element!.isRecommend).length.toString()
                                : '0',
                          ),
                          ElevatedButton(
                            onPressed: state.expertPositions.where((element) => element!.isRecommend).isEmpty
                                ? null
                                : () => bloc.add(
                                      const ExpertEvent.doAllRecommends(),
                                    ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber, // Background color
                            ),
                            child: const Icon(Icons.playlist_add_check_rounded),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => const AddExpertPositionScreen()))
                                  .then((expertPosition) {
                                if (expertPosition != null) bloc.add(ExpertEvent.addExpertPositions(expertPosition));
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber, // Background color
                            ),
                            child: const Icon(Icons.add),
                          ),
                          ElevatedButton(
                            onPressed: () => bloc.add(const ExpertEvent.updateExpertPositions()),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber, // Background color
                            ),
                            child: const SizedBox(width: 64, child: Icon(Icons.refresh)),
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ExpertSettingsScreen(),
                              ),
                            ).then((newBalancer) {
                              if (newBalancer != state.balancer) {
                                bloc.add(ExpertEvent.updateBalancer(balancer: newBalancer));
                              }
                            }),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber, // Background color
                            ),
                            child: const Icon(Icons.settings),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (state.expertPositions.isEmpty)
                    const Center(child: Text('Нет активных позиций'))
                  else
                    ...List.generate(
                      state.expertPositions.length,
                      (index) => _InLineElement(
                        index: index,
                        ticker: state.expertPositions[index]!.instrument.ticker,
                        name: state.expertPositions[index]!.instrument.title,
                        currentAmount: state.expertPositions[index]!.instrument.amount,
                        recommendedAmount: state.expertPositions[index]!.recommendAmount,
                        recommendation: state.expertPositions[index]!.recommendAction,
                        recommendationCallback: () => bloc.add(ExpertEvent.doRecommend(state.expertPositions[index]!)),
                        removeCallback: () => bloc.add(
                          ExpertEvent.removeExpertPositions(
                            state.expertPositions[index]!,
                            false,
                          ),
                        ),
                        lot: state.expertPositions[index]!.instrument.lot,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InLineElement extends StatelessWidget {
  final tabElementsStyle = const TextStyle(fontWeight: FontWeight.bold);

  final int index;
  final String ticker;
  final String name;
  final int currentAmount;
  final int recommendedAmount;
  final ExpertAction recommendation;
  final VoidCallback recommendationCallback;
  final VoidCallback removeCallback;
  final int lot;

  const _InLineElement({
    required this.index,
    required this.ticker,
    required this.name,
    required this.currentAmount,
    required this.recommendedAmount,
    required this.recommendation,
    required this.recommendationCallback,
    required this.removeCallback,
    required this.lot,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _rowColor(
        currentAmount: currentAmount,
        recommendedAmount: recommendedAmount,
        binary: index % 2 == 0,
        hasRecommendation: recommendation != ExpertAction.keep,
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              SizedBox(
                width: 55,
                child: Text(ticker, style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Text(
                  name,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 55,
                child: Text((index + 1).toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              const Icon(Icons.cases_outlined),
              Text(' $currentAmount ', style: tabElementsStyle),
              if (recommendation == ExpertAction.keep) const Icon(Icons.check_circle_outline, color: Colors.grey),
              if (recommendation == ExpertAction.buy) const Icon(Icons.add_circle_outline, color: Colors.green),
              if (recommendation == ExpertAction.sell) const Icon(Icons.remove_circle_outline, color: Colors.red),
              Text(
                ' ${recommendation != ExpertAction.keep ? recommendedAmount : currentAmount}',
                style: tabElementsStyle,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: recommendation != ExpertAction.keep ? recommendationCallback : null,
                onLongPress: removeCallback,
                child: Text(
                  recommendation.toActionName,
                  style: tabElementsStyle.copyWith(
                    color: recommendation == ExpertAction.keep
                        ? Colors.blueGrey
                        : recommendation == ExpertAction.buy
                            ? Colors.green
                            : Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _rowColor({
    required int currentAmount,
    required int recommendedAmount,
    required bool hasRecommendation,
    required bool binary,
  }) {
    if (recommendedAmount == 0 && currentAmount == 0) return Colors.grey;
    if (hasRecommendation) return Colors.greenAccent;
    if (binary) return Colors.yellowAccent;
    return Colors.yellow;
  }
}
