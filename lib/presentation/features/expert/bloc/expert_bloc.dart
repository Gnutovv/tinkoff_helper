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

  factory ExpertState.noRecommendation({
    required StepsBalancer balancer,
    required List<ExpertPosition?> expertPositions,
    required ExpertPosition currentPosition,
  }) = _NoRecommendationExpertState;

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
        doRecommend: (event) => _doRecommend(event, emitter),
        doAllRecommends: (event) => _doAllRecommends(event, emitter),
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
      List<ExpertPosition?> resultPositions = state.expertPositions
          .where((element) => element!.instrument.ticker != event.expertPosition.instrument.ticker)
          .toList();
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
    final tickers = (state.expertPositions.map((e) => e!.instrument.ticker).toList());
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
    // Получаем все шарес
    final shares = await _tinkoffApiService.instrumentsServiceClient.shares(
      $instruments_pb.InstrumentsRequest(instrumentStatus: $instruments_pb.InstrumentStatus.INSTRUMENT_STATUS_BASE),
      options: _tinkoffApiService.callOptions,
    );

    // Формируем мапу тикет - шара
    final Map<String, $instruments_pb.Share> ticketShareMap = {};
    for (final ticket in tickers) {
      ticketShareMap[ticket] = shares.instruments.firstWhere((element) => element.ticker == ticket);
    }

    // Формируем фиги и получаем прайсес
    final figis = List<String>.empty(growable: true);
    ticketShareMap.forEach((key, value) {
      figis.add(value.figi);
    });
    final prices = await _tinkoffApiService.marketDataServiceClient.getLastPrices(
      $marketdata_pb.GetLastPricesRequest(instrumentId: figis),
      options: _tinkoffApiService.callOptions,
    );

    // Получаем портфолио (чтобы знать, сколько у нас в наличии)
    final portfolioResponse = await _tinkoffApiService.operationsServiceClient.getPortfolio(
      $operations_pb.PortfolioRequest(
        accountId: _tinkoffApiService.accountId,
        currency: $operations_pb.PortfolioRequest_CurrencyRequest.RUB,
      ),
      options: _tinkoffApiService.callOptions,
    );

    // Формируем период для получения свечей
    final intFrom = Timestamp(
      seconds: Int64(((DateTime.now().toUtc().subtract(const Duration(days: 52 * 7)).millisecondsSinceEpoch) ~/ 1000)),
    );
    final intTo = Timestamp(seconds: Int64(((DateTime.now().toUtc().millisecondsSinceEpoch) ~/ 1000)));

    // Новый цикл
    List<ExpertPosition> resultExpertPositions = [];
    for (final positionTicker in tickers) {
      final share = shares.instruments.firstWhere((element) => element.ticker == positionTicker);
      final price = prices.lastPrices.firstWhere((element) => element.figi == figis[tickers.indexOf(positionTicker)]);
      final stockInstrument = StockInstrument.fromShare(share, price.price.toDouble);
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
          from: intFrom,
          to: intTo,
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
              lot: share.lot,
              averagePositionPrice: 0,
              expectedYield: 0,
              currentPrice: instrumentCandles.candles.last.close.toDouble,
            ),
        recommendAmount: state.balancer.getRecommendedAmount(stockInstrument.lot.toDouble(), instrumentCandles.candles),
        shouldBuy: state.balancer.shouldBuy(instrumentCandles.candles),
      ));
    }

    return resultExpertPositions;
  }

  Future<void> _doRecommend(_DoRecommendExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: state.expertPositions));
    if (!event.expertPosition.isRecommend) {
      emitter(ExpertState.noRecommendation(
        balancer: state.balancer,
        expertPositions: state.expertPositions,
        currentPosition: event.expertPosition,
      ));
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: state.expertPositions,
      ));
      return;
    }

    try {
      final operationType = event.expertPosition.recommendAction == ExpertAction.buy
          ? OrderDirection.ORDER_DIRECTION_BUY
          : OrderDirection.ORDER_DIRECTION_SELL;
      final amount = (event.expertPosition.recommendAmount - event.expertPosition.instrument.amount).toInt().abs();
      final priceResponse = await _tinkoffApiService.marketDataServiceClient.getLastPrices(
        $marketdata_pb.GetLastPricesRequest(instrumentId: [event.expertPosition.instrument.instrumentId]),
        options: _tinkoffApiService.callOptions,
      );
      final price = priceResponse.lastPrices.single.price;
      await _tinkoffApiService.ordersServiceClient.postOrder(
        PostOrderRequest(
          quantity: Int64(amount),
          price: price,
          direction: operationType,
          accountId: _tinkoffApiService.accountId,
          orderType: OrderType.ORDER_TYPE_MARKET,
          orderId:
              '${event.expertPosition.instrument.ticker} (${operationType == OrderDirection.ORDER_DIRECTION_BUY ? 'BUY' : 'SELL'}) $amount ${price.toDouble}',
          instrumentId: event.expertPosition.instrument.instrumentId,
        ),
        options: _tinkoffApiService.callOptions,
      );

      List<String> tickers = [];
      for (final position in state.expertPositions) {
        tickers.add(position!.instrument.ticker);
      }
      final newPositions = await _initExpertPositions(tickers);
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: newPositions,
      ));
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

  Future<void> _doAllRecommends(_DoAllRecommendsExpertEvent event, Emitter<ExpertState> emitter) async {
    emitter(ExpertState.inProgress(balancer: state.balancer, expertPositions: state.expertPositions));
    final positionsWithRecommendation = state.expertPositions.where((element) => element!.isRecommend);
    final List<String> instrumentsID = [];
    for (final position in positionsWithRecommendation) {
      instrumentsID.add(position!.instrument.instrumentId);
    }
    try {
      final pricesResponse = await _tinkoffApiService.marketDataServiceClient.getLastPrices(
        $marketdata_pb.GetLastPricesRequest(instrumentId: instrumentsID),
        options: _tinkoffApiService.callOptions,
      );
      for (final position in positionsWithRecommendation) {
        final currentPrice = pricesResponse.lastPrices
            .firstWhere((element) => element.instrumentUid == position!.instrument.instrumentId);
        final operationType = position!.recommendAction == ExpertAction.buy
            ? OrderDirection.ORDER_DIRECTION_BUY
            : OrderDirection.ORDER_DIRECTION_SELL;
        final amount = (position.recommendAmount - position.instrument.amount).toInt().abs();
        await _tinkoffApiService.ordersServiceClient.postOrder(
          PostOrderRequest(
            quantity: Int64(amount),
            price: currentPrice.price,
            direction: operationType,
            accountId: _tinkoffApiService.accountId,
            orderType: OrderType.ORDER_TYPE_MARKET,
            orderId:
                '${position.instrument.ticker} (${operationType == OrderDirection.ORDER_DIRECTION_BUY ? 'BUY' : 'SELL'}) $amount ${currentPrice.price.toDouble}',
            instrumentId: position.instrument.instrumentId,
          ),
          options: _tinkoffApiService.callOptions,
        );
      }

      List<String> tickers = [];
      for (final position in state.expertPositions) {
        tickers.add(position!.instrument.ticker);
      }
      final newPositions = await _initExpertPositions(tickers);
      emitter(ExpertState.initialized(
        balancer: state.balancer,
        expertPositions: newPositions,
      ));
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
}
