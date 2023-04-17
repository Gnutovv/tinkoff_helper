import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/operations.pb.dart';

part 'expert_portfolio_position.freezed.dart';

@freezed
class ExpertPortfolioPosition with _$ExpertPortfolioPosition {
  const factory ExpertPortfolioPosition({
    required String figi,
    required String instrumentId,
    required String ticker,
    required String title,
    required double quantity,
    required int lot,
    required double averagePositionPrice,
    required double expectedYield,
    required double currentPrice,
  }) = _ExpertPortfolioPosition;

  int get amount => quantity ~/ lot;

  factory ExpertPortfolioPosition.fromPP(PortfolioPosition position, StockInstrument instrument) =>
      ExpertPortfolioPosition(
        figi: position.figi,
        instrumentId: position.instrumentUid,
        ticker: instrument.ticker,
        title: instrument.name,
        quantity: position.quantity.toDouble,
        lot: instrument.lot,
        averagePositionPrice: position.averagePositionPrice.toDouble,
        expectedYield: position.expectedYield.toDouble,
        currentPrice: position.currentPrice.toDouble,
      );

  const ExpertPortfolioPosition._();
}
