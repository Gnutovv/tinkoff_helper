import 'package:collection/collection.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/domain/expert/recommended_position.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/domain/portfolio/expert_portfolio_position.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/common.pbenum.dart';
import 'package:tinkoff_helper/network/generated/google/protobuf/timestamp.pb.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart' as $instruments_pb;
import 'package:tinkoff_helper/network/generated/marketdata.pb.dart' as $marketdata_pb;
import 'package:tinkoff_helper/network/generated/operations.pb.dart' as $operations_pb;
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

part 'add_position_bloc.freezed.dart';

@freezed
class AddPositionEvent with _$AddPositionEvent {
  const AddPositionEvent._();

  const factory AddPositionEvent.getPositionByTicker({required String ticker, required StepsBalancer balancer}) =
      _GetPositionByTickerAddPositionEvent;

  const factory AddPositionEvent.getRecommendedPositions({
    required StepsBalancer balancer,
    required List<String> existingFigis,
  }) = _GetRecommendedPositionsEvent;
}

@freezed
class AddPositionState with _$AddPositionState {
  const AddPositionState._();

  factory AddPositionState.notGot({
    @Default(<RecommendedPositions>[]) List<RecommendedPositions> recommendedPositions,
  }) = _NotGotAddPositionState;

  factory AddPositionState.gotRecommendedPositions({
    required List<RecommendedPositions> recommendedPositions,
  }) = _GotRecommendedPositionsState;

  factory AddPositionState.got({
    required ExpertPosition expertPosition,
    required List<RecommendedPositions> recommendedPositions,
  }) = _GotAddPositionState;

  factory AddPositionState.inProgress({
    required List<RecommendedPositions> recommendedPositions,
  }) = _InProgressAddPositionState;

  factory AddPositionState.error({
    required String message,
    required List<RecommendedPositions> recommendedPositions,
  }) = _ErrorAddPositionState;
}

class AddPositionBloc extends Bloc<AddPositionEvent, AddPositionState> {
  AddPositionBloc() : super(AddPositionState.notGot()) {
    on<AddPositionEvent>(
      (event, emitter) => event.map(
        getPositionByTicker: (event) => _getPosition(event, emitter),
        getRecommendedPositions: (event) => _getRecommendedPosition(event, emitter),
      ),
    );
  }

  final _tinkoffApiService = getIt<TinkoffApiService>();

  Future<void> _getPosition(_GetPositionByTickerAddPositionEvent event, Emitter<AddPositionState> emitter) async {
    emitter(AddPositionState.inProgress(recommendedPositions: state.recommendedPositions));
    try {
      final shares = await _tinkoffApiService.instrumentsServiceClient.shares(
        $instruments_pb.InstrumentsRequest(instrumentStatus: $instruments_pb.InstrumentStatus.INSTRUMENT_STATUS_BASE),
        options: _tinkoffApiService.callOptions,
      );

      final share = shares.instruments.firstWhereOrNull((share) => share.ticker == event.ticker);

      if (share == null) {
        emitter(AddPositionState.error(
          message: 'Инструмент ${event.ticker} не найден',
          recommendedPositions: state.recommendedPositions,
        ));
        emitter(AddPositionState.notGot(recommendedPositions: state.recommendedPositions));
        return;
      }

      final price = await _tinkoffApiService.marketDataServiceClient.getLastPrices(
        $marketdata_pb.GetLastPricesRequest(instrumentId: [share.figi]),
        options: _tinkoffApiService.callOptions,
      );
      final stockInstrument = StockInstrument.fromShare(share, price.lastPrices.single.price.toDouble);

      final portfolioResponse = await _tinkoffApiService.operationsServiceClient.getPortfolio(
        $operations_pb.PortfolioRequest(
          accountId: _tinkoffApiService.accountId,
          currency: $operations_pb.PortfolioRequest_CurrencyRequest.RUB,
        ),
        options: _tinkoffApiService.callOptions,
      );
      final responsePortfolioPosition =
          portfolioResponse.positions.firstWhereOrNull((position) => position.figi == stockInstrument.figi);
      final portfolioPosition = responsePortfolioPosition != null
          ? ExpertPortfolioPosition.fromPP(responsePortfolioPosition, stockInstrument)
          : null;
      final intFrom = (DateTime.now().toUtc().subtract(const Duration(days: 350)).millisecondsSinceEpoch) ~/ 1000;
      final intTo = (DateTime.now().toUtc().millisecondsSinceEpoch) ~/ 1000;
      final instrumentCandles = await _tinkoffApiService.marketDataServiceClient.getCandles(
        $marketdata_pb.GetCandlesRequest(
          figi: share.figi,
          instrumentId: share.uid,
          interval: $marketdata_pb.CandleInterval.CANDLE_INTERVAL_WEEK,
          from: Timestamp(seconds: Int64(intFrom)),
          to: Timestamp(seconds: Int64(intTo)),
        ),
        options: _tinkoffApiService.callOptions,
      );
      emitter(
        AddPositionState.got(
          expertPosition: ExpertPosition(
            instrument: portfolioPosition ??
                ExpertPortfolioPosition(
                  figi: share.figi,
                  instrumentId: share.uid,
                  ticker: share.ticker,
                  title: share.name,
                  quantity: 0,
                  lot: share.lot,
                  averagePositionPrice: 0,
                  expectedYield: 0,
                  currentPrice: instrumentCandles.candles.last.close.toDouble,
                ),
            recommendAmount:
                event.balancer.getRecommendedAmount(stockInstrument.lot.toDouble(), instrumentCandles.candles),
            shouldBuy: event.balancer.shouldBuy(instrumentCandles.candles),
            currentStep: event.balancer.getCurrentStepPrice(instrumentCandles.candles),
          ),
          recommendedPositions: state.recommendedPositions,
        ),
      );
    } catch (error) {
      emitter(AddPositionState.error(message: error.toString(), recommendedPositions: state.recommendedPositions));
      emitter(AddPositionState.notGot(recommendedPositions: state.recommendedPositions));
    }
  }

  Future<void> _getRecommendedPosition(_GetRecommendedPositionsEvent event, Emitter<AddPositionState> emitter) async {
    emitter(AddPositionState.inProgress(recommendedPositions: state.recommendedPositions));
    try {
      final shares = await _tinkoffApiService.instrumentsServiceClient.shares(
        $instruments_pb.InstrumentsRequest(instrumentStatus: $instruments_pb.InstrumentStatus.INSTRUMENT_STATUS_BASE),
        options: _tinkoffApiService.callOptions,
      );
      final intFrom = (DateTime.now().toUtc().subtract(const Duration(days: 350)).millisecondsSinceEpoch) ~/ 1000;
      final intTo = (DateTime.now().toUtc().millisecondsSinceEpoch) ~/ 1000;
      final filteredShares = shares.instruments
          .where((share) =>
              !event.existingFigis.contains(share.figi) &&
              share.apiTradeAvailableFlag &&
              share.buyAvailableFlag &&
              share.sellAvailableFlag &&
              !share.forQualInvestorFlag &&
              !share.blockedTcaFlag &&
              share.first1dayCandleDate.seconds <= intFrom &&
              share.currency == 'rub' &&
              share.tradingStatus == SecurityTradingStatus.SECURITY_TRADING_STATUS_NORMAL_TRADING)
          .toList();
      final List<RecommendedPositions> positions = List.empty(growable: true);
      for (final share in filteredShares) {
        final candles = await _tinkoffApiService.marketDataServiceClient.getCandles(
          $marketdata_pb.GetCandlesRequest(
            figi: share.figi,
            instrumentId: share.uid,
            interval: $marketdata_pb.CandleInterval.CANDLE_INTERVAL_WEEK,
            from: Timestamp(seconds: Int64(intFrom)),
            to: Timestamp(seconds: Int64(intTo)),
          ),
          options: _tinkoffApiService.callOptions,
        );
        positions.add(RecommendedPositions(
          ticker: share.ticker,
          name: share.name,
          currentPrice: share.lot * candles.candles.last.close.toDouble,
          currentStep: event.balancer.getCurrentStepPrice(candles.candles),
          shouldBuy: event.balancer.shouldBuy(candles.candles),
        ));
      }
      final result = positions
          .where((element) => element.shouldBuy && element.currentStep > 0)
          .sorted((a, b) => b.currentStep - a.currentStep);
      emitter(AddPositionState.gotRecommendedPositions(recommendedPositions: result));
    } catch (error) {
      emitter(AddPositionState.error(message: error.toString(), recommendedPositions: state.recommendedPositions));
    }
  }
}
