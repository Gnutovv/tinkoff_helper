import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/common/loader/loader_widget.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/app_button.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/add_position_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';

class AddExpertPositionScreen extends StatelessWidget {
  const AddExpertPositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddPositionBloc>(
        create: (context) => AddPositionBloc(), child: const _AddExpertPositionScreen());
  }
}

class _AddExpertPositionScreen extends StatelessWidget {
  const _AddExpertPositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loaderController = getIt<LoaderController>();
    final tickerController = TextEditingController();
    final bloc = context.read<AddPositionBloc>();

    return BlocConsumer<AddPositionBloc, AddPositionState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: (state) => loaderController.startLoading(),
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
          got: (state) => Navigator.of(context).pop(state.expertPosition),
        );
      },
      builder: (context, state) => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Tinkoff Helper'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardItemWidget(
                    width: 400,
                    label: const Text('Добавление новой позиции', style: TextStyle(fontWeight: FontWeight.bold)),
                    content: [
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Укажите тикет новой позиции:'),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              autofocus: true,
                              decoration: const InputDecoration(
                                labelText: 'ABCD',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                                labelStyle: TextStyle(color: Colors.blue),
                              ),
                              controller: tickerController,
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppButton(
                            onPressed: () {
                              final newTicker = tickerController.text.toUpperCase();
                              final existingPositionsTickers =
                                  context.read<ExpertBloc>().state.expertPositions.map((e) => e?.instrument.ticker);
                              if (existingPositionsTickers.any((element) => element == newTicker)) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Error'),
                                      content: const Text('Такой инструмент уже добавлен в советник'),
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
                                );
                              } else {
                                bloc.add(AddPositionEvent.getPositionByTicker(
                                  ticker: newTicker,
                                  balancer: context.read<ExpertBloc>().state.balancer,
                                ));
                              }
                            },
                            child: const Icon(Icons.add),
                          ),
                          AppButton(
                            child: const Icon(Icons.download),
                            onPressed: () => bloc.add(
                              AddPositionEvent.getRecommendedPositions(
                                balancer: context.read<ExpertBloc>().state.balancer,
                                existingFigis: context
                                    .read<ExpertBloc>()
                                    .state
                                    .expertPositions
                                    .map((e) => e!.instrument.figi)
                                    .toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
                      color: const Color(0xFFECECEC),
                      width: 1060,
                      child: state.recommendedPositions.isNotEmpty
                          ? SingleChildScrollView(
                              child: Column(
                                children: List.generate(
                                    state.recommendedPositions.length,
                                    (index) => Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(width: 64, child: Text(state.recommendedPositions[index].ticker)),
                                            Text(state.recommendedPositions[index].name),
                                            const Spacer(),
                                            SizedBox(
                                              width: 128,
                                              child: Text(
                                                  state.recommendedPositions[index].currentPrice.toStringAsFixed(2)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 64),
                                              child: Text(state.recommendedPositions[index].currentStep.toString()),
                                            ),
                                          ],
                                        )),
                              ),
                            )
                          : const Center(child: Text('Нет активных позиций')),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(child: LoaderWidget(controller: getIt<LoaderController>())),
        ],
      ),
    );
  }
}
