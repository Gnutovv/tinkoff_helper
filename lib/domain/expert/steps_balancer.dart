import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'steps_balancer.freezed.dart';
part 'steps_balancer.g.dart';

@freezed
class StepsBalancer with _$StepsBalancer {
  @HiveType(typeId: 0, adapterName: 'StepsBalancerAdapter')
  const factory StepsBalancer.create({
    @HiveField(0) required List<int> stepRateList,
    @HiveField(1) required double tradeBalance,
    @HiveField(2) required int stocksAmount,
  }) = _StepBalancer;

  const StepsBalancer._();

  // Сила ступени
  int getStepAmount(int step) => stepRateList[step];

  // Процент ступени
  int getStepPercent(int step) => stepsPercent[step];

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

  List<double> get stepsMoneyVolume {
    List<double> stepsMoneyVolume = List<double>.filled(stepRateList.length, 0.0);
    for (int i = 0; i < stepsMoneyVolume.length; i++) {
      stepsMoneyVolume[i] = getStepMoneyVolume(i);
    }
    return stepsMoneyVolume;
  }
}
