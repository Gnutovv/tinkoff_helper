import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/format.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/widgets/account_settings_gialog.dart';
import 'package:tinkoff_helper/presentation/features/expert/widgets/balancer_settings_gialog.dart';

class ExpertScreen extends StatefulWidget {
  const ExpertScreen({Key? key}) : super(key: key);

  @override
  State<ExpertScreen> createState() => _ExpertScreenState();
}

class _ExpertScreenState extends State<ExpertScreen> {
  final loaderController = getIt<LoaderController>();

  @override
  Widget build(BuildContext context) {
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
          ), //print(state.message),
        );
      },
      builder: (context, state) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardItemWidget(
                width: 390,
                label: const Text(
                  'Баланс',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: [
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Всего: '),
                      Text(
                        state.account!.totalBalance.toString().toMoneyFormat,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Cвободно: '),
                      Text(
                        state.account!.freeBalance.toString().toMoneyFormat,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Торгуемый баланс: '),
                      Text(
                        state.account!.tradeBalance.toString().toMoneyFormat,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //context.read<ExpertBloc>().add(const ExpertEvent.updateBalancer());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const SizedBox(
                          width: 96,
                          child: Icon(Icons.refresh_rounded),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => showAccountSettingsDialog(
                          context,
                          initBalance: state.account!.tradeBalance,
                          maxBalance: state.account!.totalBalance,
                          onAccept: (String newValue) {
                            double? bal = double.tryParse(newValue);
                            if (bal != null) {
                              context.read<ExpertBloc>().add(ExpertEvent.updateTradeBalance(
                                    newBalance: double.parse(newValue),
                                  ));
                            }
                          },
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const SizedBox(width: 96, child: Icon(Icons.edit)),
                      ),
                    ],
                  ),
                ]),
            CardItemWidget(
                width: 390,
                label: const Text(
                  'Ступени',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: [
                  const Divider(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${intToOrderStepName(index)}: '),
                        Text(
                          '${state.balancer.stepRateList[index]} : ${state.balancer.getStepPercent(index)}% (${state.balancer.getStepMoneyVolume(index).toString().toMoneyFormat})',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<ExpertBloc>().add(const ExpertEvent.updateBalancer());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const SizedBox(
                          width: 96,
                          child: Icon(Icons.refresh_rounded),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => showBalancerSettingsDialog(
                          context,
                          stocksAmount: state.balancer.stocksAmount,
                          stepsRate: state.balancer.stepRateList,
                          onAccept: ({required int stocksAmount, required List<int> stepsRate}) =>
                              context.read<ExpertBloc>().add(ExpertEvent.updateBalancer(
                                    stepsRateList: stepsRate,
                                    stocksAmount: stocksAmount,
                                  )),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const SizedBox(width: 96, child: Icon(Icons.edit)),
                      ),
                    ],
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

/// Тут у нас будут виджеты с общим (1) торговым(2 *) и свободным(3) балансом,
/// (в блоке с балансами будет иконка обновления)
/// сила ступеней (4*), кол-во акций в торговле (5*).
/// Ниже будет кнопка перехода на экран непосредственно акций и торговли
