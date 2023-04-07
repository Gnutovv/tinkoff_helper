import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/network/generated/common.pb.dart';

part 'portfolio.freezed.dart';

@freezed
class Portfolio with _$Portfolio {
  const factory Portfolio.create({
    required MoneyValue totalAmountShares,
    required bool blocked,
  }) = _NewPortfolio;

  const Portfolio._();
}
