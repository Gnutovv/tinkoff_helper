import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_position.freezed.dart';

@freezed
class PortfolioPosition with _$PortfolioPosition {
  const factory PortfolioPosition.newPosition({
    required String figi,
    required String ticket,
    required String title,
    required double quantity,
    required double averagePositionPrice,
    required double expectedYield,
    required double expectedYieldFifo,
    required double currentPrice,
    required bool blocked,
  }) = _NewPortfolioPosition;

  const PortfolioPosition._();
}
