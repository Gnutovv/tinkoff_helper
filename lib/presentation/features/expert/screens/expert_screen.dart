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

class ExpertScreen extends StatelessWidget {
  const ExpertScreen({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
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
                          onPressed:
                              state.expertPositions.where((element) => element!.isRecommend).isEmpty ? null : () {},
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
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(alignment: Alignment.center, width: 20, child: const Text('#', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center, width: 138, child: const Text('Тикер', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center,
                        width: 138,
                        child: const Text('Наименование', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center,
                        width: 138,
                        child: const Text('Количество', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center,
                        width: 138,
                        child: const Text('Рекомендовано', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center,
                        width: 138,
                        child: const Text('Индикатор', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center,
                        width: 138,
                        child: const Text('Рекомендация', style: tabElementsStyle)),
                    Container(
                        alignment: Alignment.center,
                        width: 145,
                        child: const Text('Действие', style: tabElementsStyle)),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 0),
                  color: const Color(0xFFECECEC),
                  width: 1060,
                  height: 380,
                  child: state.expertPositions.isNotEmpty
                      ? SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              ...List.generate(
                                state.expertPositions.length,
                                (index) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                                  color: index % 2 == 0 ? Colors.yellowAccent : Colors.yellow,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 30,
                                        child: Text((index + 1).toString(), style: tabElementsStyle),
                                      ),
                                      _rowElement(state.expertPositions[index]!.instrument.ticker),
                                      _rowElement(state.expertPositions[index]!.instrument.title),
                                      _rowElement(state.expertPositions[index]!.instrument.quantity.toStringAsFixed(0)),
                                      _rowElement(state.expertPositions[index]!.recommendAmount.toString(),
                                          color: equalColor(
                                            first: state.expertPositions[index]!.recommendAmount,
                                            second: state.expertPositions[index]!.instrument.quantity,
                                          )),
                                      _rowElement(state.expertPositions[index]!.shouldBuy ? '✅' : '❌'),
                                      _rowElement(state.expertPositions[index]!.recommendAction.toActionName()),
                                      Container(
                                        width: 145,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.check,
                                                  color: Colors.green,
                                                )),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.info,
                                                  color: Colors.blue,
                                                )),
                                            IconButton(
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _rowElement(String text, {Color? color}) => Container(
        alignment: Alignment.center,
        width: 138,
        child: Text(text,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            )),
      );
}
