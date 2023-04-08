import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/portfolio/portfolio.dart';
import 'package:tinkoff_helper/domain/portfolio/portfolio_position.dart' as pp;
import 'package:tinkoff_helper/network/generated/instruments.pb.dart' as inst;
import 'package:tinkoff_helper/network/generated/operations.pb.dart';
import 'package:tinkoff_helper/network/generated/users.pb.dart';
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
  final tinkoffApiService = getIt<TinkoffApiService>();

  PortfolioBloc({required Portfolio? portfolio}) : super(PortfolioState.initialized(portfolio: portfolio)) {
    on<PortfolioEvent>((event, emitter) => event.map(update: (event) => _update(event, emitter)));
  }

  Future<void> _update(_UpdatePortfolioEvent event, Emitter<PortfolioState> emitter) async {
    emitter(PortfolioState.inProgress(portfolio: state.portfolio));
    try {
      if (state.portfolio == null) await _getAccountId(emitter);
      if (state.portfolio == null) throw Exception(['Не удалось получить данные аккаунта']);
      final request = PortfolioRequest(
        accountId: state.portfolio!.accountId,
        currency: PortfolioRequest_CurrencyRequest.RUB,
      );
      final response = await tinkoffApiService.operationsServiceClient.getPortfolio(
        request,
        options: tinkoffApiService.callOptions,
      );
      final positions = response.positions.where((element) => element.instrumentType == 'share').toList();
      final withdrawRequest = WithdrawLimitsRequest(accountId: state.portfolio!.accountId);
      final withdrawResponse = await tinkoffApiService.operationsServiceClient.getWithdrawLimits(
        withdrawRequest,
        options: tinkoffApiService.callOptions,
      );
      final instrumentRequest = inst.InstrumentsRequest();
      final instrumentsResponse = await tinkoffApiService.instrumentsServiceClient.shares(
        instrumentRequest,
        options: tinkoffApiService.callOptions,
      );
      emitter(
        PortfolioState.initialized(
          portfolio: Portfolio.create(
            totalAmountPortfolio: response.totalAmountPortfolio.toDouble,
            withdrawLimit: withdrawResponse.money.first.toDouble,
            expectedYield: response.expectedYield.toDouble,
            positions: List.generate(
              positions.length,
              (index) => pp.PortfolioPosition.newPosition(
                figi: positions[index].figi,
                ticket: instrumentsResponse.instruments
                    .firstWhere((element) => element.figi == positions[index].figi)
                    .ticker,
                title:
                    instrumentsResponse.instruments.firstWhere((element) => element.figi == positions[index].figi).name,
                quantity: positions[index].quantity.toDouble,
                averagePositionPrice: positions[index].averagePositionPrice.toDouble,
                expectedYield: positions[index].expectedYield.toDouble,
                expectedYieldFifo: positions[index].expectedYieldFifo.toDouble,
                currentPrice: positions[index].currentPrice.toDouble,
                blocked: positions[index].blocked,
              ),
            ),
            accountId: response.accountId,
            accountName: state.portfolio!.accountName,
          ),
        ),
      );
      //print(state.portfolio.toString());
    } catch (error) {
      emitter(PortfolioState.error(message: error.toString(), portfolio: state.portfolio));
      emitter(PortfolioState.initialized(portfolio: state.portfolio));
    }
  }

  Future<void> _getAccountId(Emitter<PortfolioState> emitter) async {
    try {
      final response = await tinkoffApiService.usersServiceClient.getAccounts(
        GetAccountsRequest(),
        options: tinkoffApiService.callOptions,
      );
      emitter(
        PortfolioState.inProgress(
          portfolio: Portfolio.create(
            totalAmountPortfolio: 0.0,
            withdrawLimit: 0.0,
            expectedYield: 0.0,
            positions: [],
            accountId: response.accounts.first.id,
            accountName: response.accounts.first.name,
          ),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
