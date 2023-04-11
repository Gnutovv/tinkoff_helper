import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/operations.pb.dart' as oper_pb;

part 'portfolio_position.freezed.dart';

@freezed
class PortfolioPosition with _$PortfolioPosition {
  const factory PortfolioPosition({
    required String figi,
    required String instrumentId,
    required String ticket,
    required String title,
    required double quantity,
    required double averagePositionPrice,
    required double expectedYield,
    required double currentPrice,
    required bool blocked,
  }) = _PortfolioPosition;

  factory PortfolioPosition.fromPP(oper_pb.PortfolioPosition position, StockInstrument instrument) => PortfolioPosition(
        figi: position.figi,
        instrumentId: position.instrumentUid,
        ticket: instrument.ticker,
        title: instrument.name,
        quantity: position.quantity.toDouble,
        averagePositionPrice: position.averagePositionPrice.toDouble,
        expectedYield: position.expectedYield.toDouble,
        currentPrice: position.currentPrice.toDouble,
        blocked: position.blocked,
      );

  const PortfolioPosition._();
}
