class RecommendedPositions {
  final String ticker;
  final String name;
  final double currentPrice;
  final int currentStep;
  final bool shouldBuy;

  RecommendedPositions({
    required this.ticker,
    required this.name,
    required this.currentPrice,
    required this.currentStep,
    required this.shouldBuy,
  });
}
