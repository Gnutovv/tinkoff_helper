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
    required int currentStep,
  }) = _ExpertPosition;

  int get amount => instrument.quantity ~/ instrument.lot;

  String get lotPrice => (instrument.lot * instrument.currentPrice).toStringAsFixed(2);

  bool get isRecommend => recommendAction != ExpertAction.keep;

  ExpertAction get recommendAction => amount > recommendAmount
      ? ExpertAction.sell
      : (amount < recommendAmount && shouldBuy)
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
