import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/widgets/balancer_settings_dialog.dart';

class ExpertSettingsScreen extends StatelessWidget {
  ExpertSettingsScreen({super.key});

  final loaderController = getIt<LoaderController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ExpertSettingsBloc, ExpertSettingsState>(
        listener: (context, state) {
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
          );
        },
        builder: (context, state) => Center(
          child: CardItemWidget(
              width: 390,
              label: const Text(
                'Настройки эксперта',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Торгуемый баланс:'),
                    Text(
                      state.balancer.tradeBalance.toString().toMoneyFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Количество торгуемых инструментов: '),
                    Text(state.balancer.stocksAmount.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Средств на один инструмент: '),
                    Text(
                      state.balancer.oneStockMoneyVolume.toString().toMoneyFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(),
                ...List.generate(
                  state.balancer.stepRateList.length,
                  (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 110, child: Text('${index.toStepName()}:')),
                      SizedBox(
                        width: 50,
                        child: Text(
                          state.balancer.stepRateList[index].toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${state.balancer.getStepPercent(index)}%',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        state.balancer.getStepMoneyVolume(index).toPriceFormat,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => showBalancerSettingsDialog(
                        context,
                        stocksAmount: state.balancer.stocksAmount,
                        stepsRate: state.balancer.stepRateList,
                        initBalance: state.balancer.tradeBalance,
                        onAccept: ({
                          required int stocksAmount,
                          required List<int> stepsRate,
                          required String balance,
                        }) =>
                            context.read<ExpertSettingsBloc>().add(
                                  ExpertSettingsEvent.updateBalancer(
                                    stepsRateList: stepsRate,
                                    stocksAmount: stocksAmount,
                                    balance: double.parse(balance),
                                  ),
                                ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                      ),
                      child: const Icon(Icons.edit),
                    ),
                    const SizedBox(width: 34),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(state.balancer),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                      ),
                      child: const Icon(Icons.chevron_left),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
