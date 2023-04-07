import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/domain/portfolio/portfolio_position.dart';

part 'portfolio_bloc.freezed.dart';

@freezed
class PortfolioEvent with _$PortfolioEvent {
  const PortfolioEvent._();

  const factory PortfolioEvent.init() = _InitPortfolioEvent;

  const factory PortfolioEvent.update() = _UpdatePortfolioEvent;
}

@freezed
class PortfolioState with _$PortfolioState {
  const PortfolioState._();

  factory PortfolioState.initialized({
    required List<PortfolioPosition> portfolioPositions,
  }) = _InitializedPortfolioState;

  factory PortfolioState.inProgress({
    required List<PortfolioPosition> portfolioPositions,
  }) = _InProgressPortfolioState;

  factory PortfolioState.error({
    required List<PortfolioPosition> portfolioPositions,
    required String message,
  }) = _ErrorPortfolioState;
}
