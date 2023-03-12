class StepsBalancer {
  final List<int> stepRateList;
  final double tradeBalance;
  final double generalBalance;
  final double freeBalance;
  final int stocksAmount;

  StepsBalancer({
    required this.stepRateList,
    required this.tradeBalance,
    required this.generalBalance,
    required this.freeBalance,
    required this.stocksAmount,
  });

  int getStepAmount(int step) => stepRateList[step - 1];

  int getStepPercent(int step) => getStepsPercent()[step - 1];

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

  double get oneStockMoneyVolume => tradeBalance / stocksAmount;

  double getStepMoneyVolume(int step) => ((oneStockMoneyVolume * getStepPercent(step)) / 100).floorToDouble();

  List<double> get stepsMoneyVolume {
    List<double> stepsMoneyVolume = List<double>.filled(stepRateList.length, 0.0);
    for (int i = 0; i < stepsMoneyVolume.length; i++) {
      stepsMoneyVolume[i] = getStepMoneyVolume(i);
    }
    return stepsMoneyVolume;
  }
}
