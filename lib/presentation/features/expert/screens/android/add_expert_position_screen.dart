import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/extensions.dart';
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
      builder: (context, state) => MaterialApp(
        title: 'Tinkoff Helper',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Новая позиция'),
          ),
          body: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
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
                                    showCursor: true,
                                    cursorColor: Colors.black,
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
                                    final existingPositionsTickers = context
                                        .read<ExpertBloc>()
                                        .state
                                        .expertPositions
                                        .map((e) => e?.instrument.ticker);
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
                        if (state.recommendedPositions.isEmpty)
                          const Center(child: Text('Нет активных позиций'))
                        else
                          ...List.generate(
                            state.recommendedPositions.length,
                            (index) => GestureDetector(
                              onTap: () => tickerController.text = state.recommendedPositions[index].ticker,
                              child: _InLineElement(
                                index: index,
                                ticker: state.recommendedPositions[index].ticker,
                                name: state.recommendedPositions[index].name,
                                lotPrice: state.recommendedPositions[index].currentPrice,
                                step: state.recommendedPositions[index].currentStep,
                                biColor: index % 2 == 0,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned.fill(child: LoaderWidget(controller: getIt<LoaderController>())),
            ],
          ),
        ),
      ),
    );
  }
}

class _InLineElement extends StatelessWidget {
  final int index;
  final String ticker;
  final String name;
  final double lotPrice;
  final int step;
  final bool biColor;

  const _InLineElement({
    required this.index,
    required this.ticker,
    required this.name,
    required this.lotPrice,
    required this.step,
    required this.biColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      color: biColor ? Colors.yellow : Colors.yellowAccent,
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              '${index + 1} $ticker',
              overflow: TextOverflow.fade,
              softWrap: false,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              name,
              overflow: TextOverflow.fade,
              softWrap: false,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 25),
          Text(
            '${lotPrice.toPriceFormat} $step ст.',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
