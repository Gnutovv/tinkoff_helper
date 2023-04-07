class StockInstrument {
  final String ticker;
  final String figi;
  final int lot;
  final String currency;
  final String name;
  final String country;
  late final double lastPrice;

  StockInstrument({
    required this.ticker,
    required this.figi,
    required this.lot,
    required this.currency,
    required this.name,
    required this.country,
  });

  double get lotPrice => (lastPrice * lot).toDouble();

  void setLastPrice(int beforeDot, int afterDot) {
    print('before: $beforeDot . after: $afterDot');
    lastPrice = (beforeDot + (afterDot * 0.000000001)).toDouble();
  }

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
