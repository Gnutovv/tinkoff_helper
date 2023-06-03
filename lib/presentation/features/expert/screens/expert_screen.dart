import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/common/widgets/equal_color.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/add_expert_position_screen.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/expert_settings_screen.dart';

class ExpertScreen extends StatefulWidget {
  const ExpertScreen({Key? key}) : super(key: key);

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
    const tabElementsStyle = TextStyle(fontWeight: FontWeight.bold);
    final loaderController = getIt<LoaderController>();
    final bloc = context.read<ExpertBloc>();

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
        orElse: () => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: SizedBox(
                width: 400,
                child: CardItemWidget(
                    label: const Text(
                      'Эксперт',
                      style: tabElementsStyle,
                    ),
                    content: [
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Новых рекомендаций:', style: tabElementsStyle),
                          Text(
                              state.expertPositions.isNotEmpty
                                  ? state.expertPositions.where((element) => element!.isRecommend).length.toString()
                                  : '0',
                              style: tabElementsStyle.copyWith(
                                  color: equalColor(first: 0, second: state.expertPositions.length))),
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
                    ]),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, bottom: 5),
                    width: 1060,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _rowElement('#', width: 20),
                        _rowElement('Тикер', width: 100),
                        _rowElement('Наименование', width: 300),
                        _rowElement('Количество', width: 100),
                        _rowElement('Рекомендовано', width: 120),
                        _rowElement('Индикатор', width: 90),
                        _rowElement('Рекомендация', width: 120),
                        _rowElement('Действие', width: 90),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
                      color: const Color(0xFFECECEC),
                      width: 1060,
                      child: state.expertPositions.isNotEmpty
                          ? SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Column(
                                children: [
                                  ...List.generate(
                                    state.expertPositions.length,
                                    (index) => Container(
                                      padding: const EdgeInsets.symmetric(vertical: 4),
                                      color: index % 2 == 0 ? Colors.yellowAccent : Colors.yellow,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _rowElement((index + 1).toString(), width: 20),
                                          _rowElement(state.expertPositions[index]!.instrument.ticker, width: 100),
                                          _rowElement(state.expertPositions[index]!.instrument.title, width: 300),
                                          _rowElement(state.expertPositions[index]!.amount.toString(), width: 100),
                                          _rowElement(state.expertPositions[index]!.recommendAmount.toString(),
                                              width: 120,
                                              color: equalColor(
                                                first: state.expertPositions[index]!.recommendAmount,
                                                second: state.expertPositions[index]!.instrument.amount,
                                              )),
                                          _rowElement(state.expertPositions[index]!.shouldBuy ? '✅' : '❌', width: 90),
                                          _rowElement(state.expertPositions[index]!.recommendAction.toActionName(),
                                              width: 120),
                                          SizedBox(
                                            width: 90,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                state.expertPositions[index]!.recommendAction != ExpertAction.keep
                                                    ? IconButton(
                                                        tooltip: 'Выполнить рекомендацию',
                                                        visualDensity: VisualDensity.comfortable,
                                                        onPressed: () => bloc.add(
                                                              ExpertEvent.doRecommend(state.expertPositions[index]!),
                                                            ),
                                                        icon: const Icon(
                                                          Icons.check,
                                                          color: Colors.green,
                                                        ))
                                                    : const SizedBox(),
                                                IconButton(
                                                    tooltip: 'Удалить позицию',
                                                    visualDensity: VisualDensity.comfortable,
                                                    onPressed: () => bloc.add(
                                                          ExpertEvent.removeExpertPositions(
                                                            state.expertPositions[index]!,
                                                            false,
                                                          ),
                                                        ),
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.red,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const Center(child: Text('Нет активных позиций')),
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

  Container _rowElement(String text, {Color? color, double? width}) => Container(
        alignment: Alignment.center,
        width: width ?? 150,
        child: AutoSizeText(text,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            )),
      );
}
