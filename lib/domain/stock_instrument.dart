import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart';

part 'stock_instrument.freezed.dart';

@freezed
class StockInstrument with _$StockInstrument {
  const StockInstrument._();

  const factory StockInstrument({
    required String ticker,
    required String figi,
    required int lot,
    required String currency,
    required String name,
    required String country,
    required double lastPrice,
  }) = _StockInstriment;

  factory StockInstrument.fromShare(Share share, double lastPrice) => StockInstrument(
        ticker: share.ticker,
        figi: share.figi,
        lot: share.lot,
        currency: share.currency,
        name: share.name,
        country: share.countryOfRisk,
        lastPrice: lastPrice,
      );

  double get lotPrice => (lastPrice * lot).toDouble();

  @override
  String toString() {
    return '''Ticker: $ticker
    figi: $figi
    Lot: $lot
    Currency: $currency
    Name: $name
    Country: $country
    Last price: $lastPrice
    Lot price: $lotPrice''';
  }
}
