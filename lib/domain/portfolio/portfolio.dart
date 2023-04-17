import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/portfolio/expert_portfolio_position.dart';

part 'portfolio.freezed.dart';

@freezed
class Portfolio with _$Portfolio {
  const factory Portfolio({
    required double totalAmountPortfolio,
    required double withdrawLimit,
    required double expectedYield,
    required List<ExpertPortfolioPosition> positions,
    required String accountId,
    required String accountName,
  }) = _Portfolio;
}
