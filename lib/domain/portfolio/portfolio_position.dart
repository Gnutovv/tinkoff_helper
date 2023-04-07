import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/network/generated/common.pb.dart';

part 'portfolio_position.freezed.dart';

@freezed
class PortfolioPosition with _$PortfolioPosition {
  const factory PortfolioPosition.newPosition({
    required String figi,
    required String instrumentType,
    required Quotation quantity,
    required MoneyValue averagePositionPrice,
    required Quotation expectedYield,
    required MoneyValue currentPrice,
    required bool blocked,
  }) = _NewPortfolioPosition;

  const PortfolioPosition._();
}
