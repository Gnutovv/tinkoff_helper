class StepsBalancer {
  final List<int> stepRateList;
  final double tradeBalance;
  final int stocksAmount;

  StepsBalancer({
    required this.stepRateList,
    required this.tradeBalance,
    required this.stocksAmount,
  });

  // Сила ступени
  int getStepAmount(int step) => stepRateList[step];

  // Процент ступени
  int getStepPercent(int step) => getStepsPercent()[step];

  List<int> getStepsPercent() {
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
  double get oneStockMoneyVolume => tradeBalance / stocksAmount;

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
