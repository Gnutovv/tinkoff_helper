import 'package:flutter/material.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart';
import 'package:tinkoff_helper/network/generated/marketdata.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final width = 264.0;
  final height = 134.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Главная (в разработке)',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardItemWidget(
                width: width,
                height: height,
                icon: const Icon(Icons.monetization_on_outlined),
                label: const Text(
                  'Мой баланс',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                content: const [
                  Text(
                    '16352.03',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ]),
            CardItemWidget(
                width: width,
                height: height,
                icon: const Icon(Icons.document_scanner_rounded),
                label: const Text(
                  'Мои счета',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                content: const [
                  Text(
                    'Счетов: 4',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ]),
            CardItemWidget(
              width: width,
              height: height,
              icon: const Icon(Icons.history),
              label: const Text(
                'История операций',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              content: const [
                Text(
                  'Операций: 164',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(

            ///TODO: заменить функционал
            onPressed: () async {
              final api = getIt<TinkoffApiService>();
              final request = InstrumentsRequest();
              final res = await api.instrumentsServiceClient.shares(request, options: api.callOptions);
              final vtbr = res.instruments.firstWhere((element) => element.ticker == 'ALRS');

              final StockInstrument instr = StockInstrument(
                ticker: vtbr.ticker,
                figi: vtbr.figi,
                lot: vtbr.lot,
                currency: vtbr.currency,
                name: vtbr.name,
                country: vtbr.countryOfRisk,
              );

              final getpricemoexrequest = GetLastPricesRequest(instrumentId: [vtbr.figi]);
              final resa =
                  await api.marketDataServiceClient.getLastPrices(getpricemoexrequest, options: api.callOptions);
              print(resa.lastPrices.toString());
              instr.setLastPrice(resa.lastPrices.first.price.units.toInt(), resa.lastPrices.first.price.nano);
              print(instr.toString());
            },
            child: const Text('Обновить')),
      ],
    );
  }
}
