import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/common/widgets/equal_color.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/bloc/portfolio_bloc.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  void initState() {
    super.initState();
    if (context.read<PortfolioBloc>().state.portfolio == null) {
      context.read<PortfolioBloc>().add(const PortfolioEvent.update());
    }
  }

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
          ),
        );
      },
      builder: (context, state) => state.portfolio != null
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: SizedBox(
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
                                state.portfolio!.accountName,
                                style: tabElementsStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Всего средств:'),
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
                              const Text('Открытые позиции:'),
                              Text(
                                '${state.profit.toStringAsFixed(2).toMoneyFormat} (${state.portfolio!.expectedYield.toStringAsFixed(2)} %)',
                                style: tabElementsStyle.copyWith(
                                  color: equalColor(first: state.portfolio!.expectedYield, second: 0),
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
                            _rowElement('Цена покупки', width: 120),
                            _rowElement('Текущая цена', width: 100),
                            _rowElement('Прибыль (₽)', width: 120),
                            _rowElement('Прибыль (%)', width: 100),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
                          color: const Color(0xFFECECEC),
                          width: 1060,
                          child: state.portfolio!.positions.isEmpty
                              ? const Center(child: Text('Нет активных позиций'))
                              : SingleChildScrollView(
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  child: Column(
                                    children: [
                                      ...List.generate(
                                        state.positions.length,
                                        (index) => Container(
                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                          color: index % 2 == 0 ? Colors.yellowAccent : Colors.yellow,
                                          height: 52,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              _rowElement((index + 1).toString(), width: 20),
                                              _rowElement(state.positions[index].ticker, width: 100),
                                              _rowElement(state.positions[index].title, width: 300),
                                              _rowElement(state.positions[index].amount.toString(), width: 100),
                                              _rowElement(
                                                state.positions[index].averagePositionPrice.toString(),
                                                width: 120,
                                              ),
                                              _rowElement(state.positions[index].currentPrice.toString(), width: 100),
                                              _rowElement(
                                                state.positions[index].expectedYield.toStringAsFixed(2),
                                                width: 120,
                                                color: equalColor(
                                                  first: state.positions[index].expectedYield,
                                                  second: 0,
                                                ),
                                              ),
                                              _rowElement(
                                                _getProfitPercent(
                                                  state.positions[index].averagePositionPrice,
                                                  state.positions[index].currentPrice,
                                                ),
                                                width: 100,
                                                color: equalColor(
                                                  first: state.positions[index].expectedYield,
                                                  second: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
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

  String _getProfitPercent(double app, double cp) {
    return '${((cp - app) / cp * 100).toStringAsFixed(2)} %';
  }
}
