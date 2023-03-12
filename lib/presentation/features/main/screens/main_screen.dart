import 'package:flutter/material.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart';
import 'package:tinkoff_helper/network/generated/marketdata.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/presentation/features/main/widgets/card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          children: const [
            CardItem(icon: Icon(Icons.monetization_on_outlined), label: 'Мой баланс', value: '16352.03'),
            CardItem(icon: Icon(Icons.document_scanner_rounded), label: 'Мои счета', value: 'Счетов: 4'),
            CardItem(icon: Icon(Icons.history), label: 'История операций', value: 'Операций: 164'),
          ],
        ),
        ElevatedButton(
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
