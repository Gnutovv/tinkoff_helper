import 'package:collection/collection.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/domain/portfolio/expert_portfolio_position.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/google/protobuf/timestamp.pb.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart' as $instruments_pb;
import 'package:tinkoff_helper/network/generated/marketdata.pb.dart' as $marketdata_pb;
import 'package:tinkoff_helper/network/generated/operations.pb.dart' as $operations_pb;
import 'package:tinkoff_helper/network/generated/orders.pb.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

part 'expert_bloc.freezed.dart';

@freezed
class ExpertEvent with _$ExpertEvent {
  const ExpertEvent._();

  const factory ExpertEvent.init() = _InitExpertEvent;

  const factory ExpertEvent.updateBalancer({required StepsBalancer balancer}) = _UpdateBalancerExpertEvent;

  const factory ExpertEvent.updateExpertPositions() = _UpdateExpertPositionsExpertEvent;

  const factory ExpertEvent.addExpertPositions(ExpertPosition expertPosition) = _AddExpertPositionsExpertEvent;

  const factory ExpertEvent.removeExpertPositions(ExpertPosition expertPosition, bool sell) =
      _RemoveExpertPositionsExpertEvent;

  const factory ExpertEvent.doRecommend(ExpertPosition expertPosition) = _DoRecommendExpertEvent;

  const factory ExpertEvent.doAllRecommends() = _DoAllRecommendsExpertEvent;
}

@freezed
class ExpertState with _$ExpertState {
  const ExpertState._();

  factory ExpertState.notInitialized({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
    required List<String> initPositions,
  }) = _NotInitializedExpertState;

  factory ExpertState.initialized({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
  }) = _InitializedExpertState;

  factory ExpertState.inProgress({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
  }) = _InProgressExpertState;

  factory ExpertState.error({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
    required String message,
  }) = _ErrorExpertState;

  factory ExpertState.expertPositionRemoved({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
    required ExpertPosition removedPosition,
  }) = _ExpertPositionRemovedExpertState;

  List<String>? get initPositions => mapOrNull(notInitialized: (state) => state.initPositions);
}

class ExpertBloc extends Bloc<ExpertEvent, ExpertState> {
  ExpertBloc({
    required StepsBalancer balancer,
    required List<String> initPositions,
  }) : super(ExpertState.notInitialized(balancer: balancer, initPositions: initPositions, expertPositions: [])) {
    on<ExpertEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
        updateBalancer: (event) => _updateBalancer(event, emitter),
        updateExpertPositions: (event) => _updateExpertPositions(event, emitter),
        doRecommend: (event) => null,
        doAllRecommends: (event) => null,
        addExpertPositions: (event) => _addExpertPosition(event, emitter),
        removeExpertPositions: (event) => _removeExpertPosition(event, emitter),
      ),
    );
  }

  final _tinkoffApiService = getIt<TinkoffApiService>();

  Future<void> _init(_InitExpertEvent event, Emitter<ExpertState> emitter) async {
    List<String> initPositions = state.initPositions!;
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: state.expertPositions));
    try {
      final updatedExpertPositions = await _initExpertPositions(initPositions);
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: updatedExpertPositions,
      ));
    } catch (error) {
      emitter(ExpertState.error(
        message: error.toString(),
        balancer: state.balancer,
        expertPositions: state.expertPositions,
      ));
      emitter(ExpertState.notInitialized(
        expertPositions: state.expertPositions,
        balancer: state.balancer,
        initPositions: initPositions,
      ));
    }
  }

  Future<void> _addExpertPosition(_AddExpertPositionsExpertEvent event, Emitter<ExpertState> emitter) async {
    final positions = [...state.expertPositions, event.expertPosition];
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: positions));
    positions.sort((a, b) => a!.instrument.ticker.compareTo(b!.instrument.ticker));
    getIt<HiveStorage>().saveExpertPositions(positions);
    emitter(ExpertState.initialized(balancer: state.balancer, expertPositions: state.expertPositions));
  }

  Future<void> _removeExpertPosition(_RemoveExpertPositionsExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: state.expertPositions));
    try {
      List<ExpertPosition?> resultPositions =
          state.expertPositions.where((element) => element != event.expertPosition).toList();
      if (event.sell) {
        await _tinkoffApiService.ordersServiceClient.postOrder(
          PostOrderRequest(
            figi: event.expertPosition.instrument.figi,
            quantity: Int64(event.expertPosition.instrument.quantity.toInt()),
            price: event.expertPosition.instrument.currentPrice.toQuotation,
            direction: OrderDirection.ORDER_DIRECTION_SELL,
            accountId: _tinkoffApiService.accountId,
            orderType: OrderType.ORDER_TYPE_MARKET,
            orderId: null,
            instrumentId: event.expertPosition.instrument.instrumentId,
          ),
          options: _tinkoffApiService.callOptions,
        );
      }
      await getIt<HiveStorage>().saveExpertPositions(resultPositions);
      emitter(ExpertState.expertPositionRemoved(
        balancer: state.balancer,
        expertPositions: resultPositions,
        removedPosition: event.expertPosition,
      ));
      emitter(ExpertState.initialized(balancer: state.balancer, expertPositions: state.expertPositions));
    } catch (e) {
      emitter(ExpertState.error(
        balancer: state.balancer,
        expertPositions: state.expertPositions,
        message: e.toString(),
      ));
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: state.expertPositions,
      ));
    }
  }

  Future<void> _updateBalancer(_UpdateBalancerExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.initialized(balancer: event.balancer, expertPositions: state.expertPositions));
  }

  Future<void> _updateExpertPositions(_UpdateExpertPositionsExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: state.expertPositions));
    List<String> tickers = [];
    for (final position in state.expertPositions) {
      tickers.add(position!.instrument.ticker);
    }
    try {
      final resultExpertPositions = await _initExpertPositions(tickers);
      emitter(ExpertState.initialized(balancer: state.balancer, expertPositions: resultExpertPositions));
    } catch (e) {
      emitter(ExpertState.error(
        balancer: state.balancer,
        expertPositions: state.expertPositions,
        message: e.toString(),
      ));
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: state.expertPositions,
      ));
    }
  }

  Future<List<ExpertPosition>> _initExpertPositions(List<String> tickers) async {
    List<ExpertPosition> resultExpertPositions = [];
    final shares = await _tinkoffApiService.instrumentsServiceClient.shares(
      $instruments_pb.InstrumentsRequest(instrumentStatus: $instruments_pb.InstrumentStatus.INSTRUMENT_STATUS_BASE),
      options: _tinkoffApiService.callOptions,
    );
    final portfolioResponse = await _tinkoffApiService.operationsServiceClient.getPortfolio(
      $operations_pb.PortfolioRequest(
        accountId: _tinkoffApiService.accountId,
        currency: $operations_pb.PortfolioRequest_CurrencyRequest.RUB,
      ),
      options: _tinkoffApiService.callOptions,
    );
    final intFrom = (DateTime.now().toUtc().subtract(const Duration(days: 350)).millisecondsSinceEpoch) ~/ 1000;
    final intTo = (DateTime.now().toUtc().millisecondsSinceEpoch) ~/ 1000;

    for (final positionTicker in tickers) {
      final share = shares.instruments.firstWhereOrNull((share) => share.ticker == positionTicker);
      if (share == null) continue;
      final price = await _tinkoffApiService.marketDataServiceClient.getLastPrices(
        $marketdata_pb.GetLastPricesRequest(instrumentId: [share.figi]),
        options: _tinkoffApiService.callOptions,
      );
      final stockInstrument = StockInstrument.fromShare(share, price.lastPrices.single.price.toDouble);
      final responsePortfolioPosition =
          portfolioResponse.positions.firstWhereOrNull((position) => position.figi == stockInstrument.figi);
      final portfolioPosition = responsePortfolioPosition != null
          ? ExpertPortfolioPosition.fromPP(responsePortfolioPosition, stockInstrument)
          : null;
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
      resultExpertPositions.add(ExpertPosition(
        instrument: portfolioPosition ??
            ExpertPortfolioPosition(
              figi: share.figi,
              instrumentId: share.uid,
              ticker: share.ticker,
              title: share.name,
              quantity: 0,
              averagePositionPrice: 0,
              expectedYield: 0,
              currentPrice: instrumentCandles.candles.last.close.toDouble,
            ),
        recommendAmount: state.balancer.getRecommendedAmount(stockInstrument.lotPrice, instrumentCandles.candles),
        shouldBuy: state.balancer.shouldBuy(instrumentCandles.candles),
      ));
    }

    return resultExpertPositions;
  }
}
