import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/portfolio/expert_portfolio_position.dart';
import 'package:tinkoff_helper/domain/portfolio/portfolio.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart' as inst;
import 'package:tinkoff_helper/network/generated/operations.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

part 'portfolio_bloc.freezed.dart';

@freezed
class PortfolioEvent with _$PortfolioEvent {
  const PortfolioEvent._();

  const factory PortfolioEvent.update() = _UpdatePortfolioEvent;
}

@freezed
class PortfolioState with _$PortfolioState {
  bool get existPositions => portfolio?.positions.isNotEmpty ?? false;

  const PortfolioState._();

  factory PortfolioState.initialized({
    Portfolio? portfolio,
  }) = _InitializedPortfolioState;

  factory PortfolioState.inProgress({
    Portfolio? portfolio,
  }) = _InProgressPortfolioState;

  factory PortfolioState.error({
    Portfolio? portfolio,
    required String message,
  }) = _ErrorPortfolioState;
}

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final _tinkoffApiService = getIt<TinkoffApiService>();

  PortfolioBloc({required Portfolio? portfolio}) : super(PortfolioState.initialized(portfolio: portfolio)) {
    on<PortfolioEvent>((event, emitter) => event.map(update: (event) => _update(event, emitter)));
  }

  Future<void> _update(_UpdatePortfolioEvent event, Emitter<PortfolioState> emitter) async {
    emitter(PortfolioState.inProgress(portfolio: state.portfolio));
    try {
      final portfolioResponse = await _tinkoffApiService.operationsServiceClient.getPortfolio(
        PortfolioRequest(
          accountId: _tinkoffApiService.accountId,
          currency: PortfolioRequest_CurrencyRequest.RUB,
        ),
        options: _tinkoffApiService.callOptions,
      );
      final positions = portfolioResponse.positions.where((element) => element.instrumentType == 'share').toList();
      final withdrawRequest = WithdrawLimitsRequest(accountId: _tinkoffApiService.accountId);
      final withdrawResponse = await _tinkoffApiService.operationsServiceClient.getWithdrawLimits(
        withdrawRequest,
        options: _tinkoffApiService.callOptions,
      );
      final instrumentRequest = inst.InstrumentsRequest();
      final instrumentsResponse = await _tinkoffApiService.instrumentsServiceClient.shares(
        instrumentRequest,
        options: _tinkoffApiService.callOptions,
      );
      emitter(
        PortfolioState.initialized(
          portfolio: Portfolio(
            totalAmountPortfolio: portfolioResponse.totalAmountPortfolio.toDouble,
            withdrawLimit: withdrawResponse.money.first.toDouble,
            expectedYield: portfolioResponse.expectedYield.toDouble,
            positions: List.generate(
              positions.length,
              (index) => ExpertPortfolioPosition(
                figi: positions[index].figi,
                instrumentId: positions[index].instrumentUid,
                ticker: instrumentsResponse.instruments
                    .firstWhere((element) => element.figi == positions[index].figi)
                    .ticker,
                title:
                    instrumentsResponse.instruments.firstWhere((element) => element.figi == positions[index].figi).name,
                quantity: positions[index].quantity.toDouble,
                lot: instrumentsResponse.instruments.firstWhere((element) => element.figi == positions[index].figi).lot,
                averagePositionPrice: positions[index].averagePositionPrice.toDouble,
                expectedYield: positions[index].expectedYield.toDouble,
                currentPrice: positions[index].currentPrice.toDouble,
              ),
            ),
            accountId: portfolioResponse.accountId,
            accountName: _tinkoffApiService.accountName!,
          ),
        ),
      );
    } catch (error) {
      emitter(PortfolioState.error(message: error.toString(), portfolio: state.portfolio));
      emitter(PortfolioState.initialized(portfolio: state.portfolio));
    }
  }
}
