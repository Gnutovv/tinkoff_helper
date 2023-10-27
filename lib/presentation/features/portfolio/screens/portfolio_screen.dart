import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/common/widgets/equal_color.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/bloc/portfolio_bloc.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

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
      builder: (context, state) => state.portfolio == null
          ? Center(
              child: ElevatedButton(
                onPressed: () => bloc.add(const PortfolioEvent.update()),
                child: const Text('Загрузить портфель'),
              ),
            )
          : state.portfolio!.positions.isEmpty
              ? const Center(child: Text('Нет активных позиций'))
              : CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          CardItemWidget(
                            label: const Text('Портфель', style: tabElementsStyle),
                            content: [
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
                                    state.portfolio!.totalAmountPortfolio.toPriceFormat,
                                    style: tabElementsStyle,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Свободных средств:'),
                                  Text(
                                    state.portfolio!.withdrawLimit.toPriceFormat,
                                    style: tabElementsStyle,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Открытые позиции:'),
                                  Text(
                                    '${state.profit.toPriceFormat} (${state.portfolio!.expectedYield.toStringAsFixed(2)} %)',
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
                            ],
                          ),
                          ...List.generate(
                            state.positions.length,
                            (index) => Container(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              color: index % 2 == 0 ? Colors.yellowAccent : Colors.yellow,
                              height: 52,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: _InLineElement(
                                  index: index,
                                  ticker: state.positions[index].ticker,
                                  name: state.positions[index].title,
                                  amount: state.positions[index].amount,
                                  currentPrice: state.positions[index].currentPrice,
                                  profit: state.positions[index].expectedYield,
                                  lot: state.positions[index].lot,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
    );
  }
}

class _InLineElement extends StatelessWidget {
  final int index;
  final String ticker;
  final String name;
  final int amount;
  final double currentPrice;
  final double profit;
  final int lot;

  const _InLineElement({
    required this.index,
    required this.ticker,
    required this.name,
    required this.amount,
    required this.currentPrice,
    required this.profit,
    required this.lot,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            const SizedBox(width: 25),
            Text(
              (currentPrice * amount * lot).toPriceFormat,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 55,
              child: Text((index + 1).toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            Text('$amount л.'),
            const Text(' • '),
            Text(currentPrice.toPriceFormat),
            const Spacer(),
            Text(
              profit.toPriceFormat,
              style: TextStyle(
                color: equalColor(first: profit, second: 0),
              ),
            ),
            const Text(' • '),
            Text(
              _getProfitPercent(profit, (currentPrice * amount * lot) - profit),
              style: TextStyle(
                color: equalColor(first: profit, second: 0),
              ),
            ),
            // прибыль в %
          ],
        ),
      ],
    );
  }

  static String _getProfitPercent(double app, double cp) {
    return '${(app / cp * 100).toStringAsFixed(2)} %';
  }
}
