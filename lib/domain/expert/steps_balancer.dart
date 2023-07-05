import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/network/generated/marketdata.pb.dart';

part 'steps_balancer.freezed.dart';

part 'steps_balancer.g.dart';

@freezed
class StepsBalancer with _$StepsBalancer {
  @HiveType(typeId: 0, adapterName: 'StepsBalancerAdapter')
  const factory StepsBalancer({
    @HiveField(0) required List<int> stepRateList,
    @HiveField(1) required double tradeBalance,
    @HiveField(2) required int stocksAmount,
  }) = _StepBalancer;

  const StepsBalancer._();

  /// XLSX Operations
  // Сила ступени
  int getStepAmount(int step) => stepRateList[step];

  // Процент ступени
  int getStepPercent(int step) => stepsPercent[step];

  // Проценты всех ступеней
  List<int> get stepsPercent {
    int sum = 0;
    for (int s in stepRateList) {
      sum += s;
    }
    List<int> stepsPercent = [...stepRateList];
    for (int i = 0; i < stepsPercent.length; i++) {
      stepsPercent[i] = (stepRateList[i] / sum * 100).floor();
    }
    return stepsPercent;
  }

  // Денег на одну акцию
  double get oneStockMoneyVolume => (tradeBalance / stocksAmount).floorToDouble();

  // Денег на ступень
  double getStepMoneyVolume(int step) => ((oneStockMoneyVolume * getStepPercent(step)) / 100).floorToDouble();

  // Денег на ступени
  List<double> get stepsMoneyVolume => List.generate(stepRateList.length, (index) => getStepMoneyVolume(index));

  // Список цен по ступеням на основе списка свечей
  List<double> stepsPrices(List<HistoricCandle> candles) {
    final lhPrices = _getMinMaxPricesFromCandles(candles);
    final linesCount = stepRateList.length + 2;
    final divider = (lhPrices.last - lhPrices.first) / linesCount;
    final priceLevels = List.generate(linesCount, (index) {
      if (index == 0) return lhPrices.first;
      return lhPrices.first + (divider * index);
    });
    priceLevels.add(lhPrices.last);
    return priceLevels.reversed.toList();
  }

  // Минимальная и максимальная цены за период (на основе списка свечей)
  List<double> _getMinMaxPricesFromCandles(List<HistoricCandle> candles) {
    double min = double.infinity;
    double max = 0.0;
    for (final candle in candles) {
      if (candle.high.toDouble > max) max = candle.high.toDouble;
      if (candle.low.toDouble < min) min = candle.low.toDouble;
    }
    return [min, max];
  }

  // Текущая ступень
  int _getCurrentStepPrice(List<HistoricCandle> candles) {
    final currentPrice = candles.last.close.toDouble;
    final stepsPricesResult = stepsPrices(candles);
    for (int i = 1; i < stepsPricesResult.length; i++) {
      if (currentPrice > stepsPricesResult[i]) {
        return i - 1;
      }
    }
    return 0;
  }

  int getRecommendedAmount(double lot, List<HistoricCandle> candles) {
    final hlPrices = _getMinMaxPricesFromCandles(candles);
    final averageLotPrice = lot * ((hlPrices.first + hlPrices.last) / 2);
    final allStepsMoneyValue = stepsMoneyVolume;
    final currentStep = _getCurrentStepPrice(candles);
    double moneyForAllStepsToCurrent = 0;
    for (int i = 0; i < currentStep; i++) {
      if (i >= allStepsMoneyValue.length) break;
      moneyForAllStepsToCurrent += allStepsMoneyValue[i];
    }
    return (moneyForAllStepsToCurrent / averageLotPrice).round();
  }

  bool shouldBuy(List<HistoricCandle> candles) {
    final lastCandles = candles.getRange(candles.length - 13, candles.length);
    double sum = 0.0;
    for (final candle in lastCandles) {
      sum += candle.close.toDouble;
    }
    final ma = sum / lastCandles.length;
    return ma < candles.last.close.toDouble;
  }
}
