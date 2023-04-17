import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/portfolio/expert_portfolio_position.dart';

part 'expert_position.freezed.dart';

@freezed
class ExpertPosition with _$ExpertPosition {
  const ExpertPosition._();

  const factory ExpertPosition({
    required ExpertPortfolioPosition instrument,
    required int recommendAmount,
    required bool shouldBuy,
  }) = _ExpertPosition;

  int get amount => instrument.quantity ~/ instrument.lot;

  bool get isRecommend => recommendAction != ExpertAction.keep;

  ExpertAction get recommendAction => amount > recommendAmount
      ? ExpertAction.sell
      : (instrument.quantity < recommendAmount && shouldBuy)
          ? ExpertAction.buy
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
        return 'Ждать';
    }
  }
}
