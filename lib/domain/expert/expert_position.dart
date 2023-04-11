import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';

part 'expert_position.freezed.dart';

@freezed
class ExpertPosition with _$ExpertPosition {
  const ExpertPosition._();

  const factory ExpertPosition({
    required StockInstrument instrument,
    required int quantity,
    required int recommendationQuantity,
    required bool canBuy,
    required List<double> stepsPrices,
  }) = _ExpertPosition;

  bool get isRecommend => (quantity != recommendationQuantity) && canBuy;

  ExpertAction get recommendAction => quantity < recommendationQuantity
      ? ExpertAction.buy
      : quantity > recommendationQuantity
          ? ExpertAction.sell
          : ExpertAction.keep;
}

enum ExpertAction { buy, sell, keep }

extension ParseToString on ExpertAction {
  String toActionName() {
    switch (this) {
      case ExpertAction.buy:
        return 'Покупать';
      case ExpertAction.sell:
        return 'Продавать';
      case ExpertAction.keep:
        return 'Держать';
    }
  }
}
