import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/bloc/portfolio_bloc.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PortfolioBloc>();
    final loaderController = getIt<LoaderController>();
    const tabElementsStyle = TextStyle(fontWeight: FontWeight.bold);

    return BlocConsumer<PortfolioBloc, PortfolioState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: (_) => loaderController.startLoading(),
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
      builder: (context, state) => state.portfolio != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 500,
                  child: Column(
                    children: [
                      CardItemWidget(label: const Text('Портфель', style: tabElementsStyle), content: [
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Наименование счета:'),
                            Text(
                              '${state.portfolio!.accountName} (№ ${state.portfolio!.accountId})',
                              style: tabElementsStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Стоимость портфеля:'),
                            Text(
                              state.portfolio!.totalAmountPortfolio.toString().toMoneyFormat,
                              style: tabElementsStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Свободных средств:'),
                            Text(
                              state.portfolio!.withdrawLimit.toString().toMoneyFormat,
                              style: tabElementsStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Прибыль по открытым позициям:'),
                            Text(
                              '${state.portfolio!.expectedYield}%',
                              style: tabElementsStyle.copyWith(
                                color: state.portfolio!.expectedYield >= 0 ? const Color(0xFF00AA00) : Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        ElevatedButton(
                          onPressed: () => bloc.add(const PortfolioEvent.update()),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber, // Background color
                          ),
                          child: const SizedBox(width: 64, child: Icon(Icons.refresh)),
                        ),
                      ]),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment: Alignment.center, width: 20, child: const Text('#', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Тикер', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Наименование', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Количество', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Цена покупки', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Текущая цена', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Прибыль (₽)', style: tabElementsStyle)),
                        Container(
                            alignment: Alignment.center,
                            width: 118,
                            child: const Text('Прибыль (%)', style: tabElementsStyle)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 0),
                      color: const Color(0xFFECECEC),
                      width: 860,
                      height: 370,
                      child: state.portfolio!.positions.isEmpty
                          ? const Center(child: Text('Нет активных позиций'))
                          : SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Column(
                                children: [
                                  ...List.generate(
                                    state.portfolio!.positions.length,
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
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child:
                                                Text(state.portfolio!.positions[index].ticket, style: tabElementsStyle),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child:
                                                Text(state.portfolio!.positions[index].title, style: tabElementsStyle),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child: Text(
                                              state.portfolio!.positions[index].quantity.toInt().toString(),
                                              style: tabElementsStyle,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child: Text(
                                              state.portfolio!.positions[index].averagePositionPrice.toString(),
                                              style: tabElementsStyle,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child: Text(
                                              state.portfolio!.positions[index].currentPrice.toString(),
                                              style: tabElementsStyle,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child: Text(state.portfolio!.positions[index].expectedYield.toString(),
                                                style: tabElementsStyle.copyWith(
                                                  color: state.portfolio!.positions[index].expectedYield >= 0
                                                      ? const Color(0xFF00AA00)
                                                      : Colors.red,
                                                )),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 118,
                                            child: Text(
                                                _getProfitPercent(
                                                  state.portfolio!.positions[index].averagePositionPrice,
                                                  state.portfolio!.positions[index].currentPrice,
                                                ),
                                                style: tabElementsStyle.copyWith(
                                                  color: state.portfolio!.positions[index].expectedYield >= 0
                                                      ? const Color(0xFF00AA00)
                                                      : Colors.red,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            )
          : Center(
              child: ElevatedButton(
                onPressed: () => bloc.add(const PortfolioEvent.update()),
                child: const Text('Загрузить портфель'),
              ),
            ),
    );
  }

  String _getProfitPercent(double app, double cp) {
    return '${((cp - app) / cp * 100).toStringAsFixed(2)} %';
  }
}
