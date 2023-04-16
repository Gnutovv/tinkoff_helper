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
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

part 'add_position_bloc.freezed.dart';

@freezed
class AddPositionEvent with _$AddPositionEvent {
  const AddPositionEvent._();

  const factory AddPositionEvent.getPositionByTicker({required String ticker, required StepsBalancer balancer}) =
      _GetPositionByTickerAddPositionEvent;
}

@freezed
class AddPositionState with _$AddPositionState {
  const AddPositionState._();

  factory AddPositionState.notGot() = _NotGotAddPositionState;

  factory AddPositionState.got({required ExpertPosition expertPosition}) = _GotAddPositionState;

  factory AddPositionState.inProgress() = _InProgressAddPositionState;

  factory AddPositionState.error({required String message}) = _ErrorAddPositionState;
}

class AddPositionBloc extends Bloc<AddPositionEvent, AddPositionState> {
  AddPositionBloc() : super(AddPositionState.notGot()) {
    on<AddPositionEvent>(
      (event, emitter) => event.map(getPositionByTicker: (event) => _getPosition(event, emitter)),
    );
  }

  final _tinkoffApiService = getIt<TinkoffApiService>();

  Future<void> _getPosition(_GetPositionByTickerAddPositionEvent event, Emitter<AddPositionState> emitter) async {
    emitter(AddPositionState.inProgress());
    try {
      final shares = await _tinkoffApiService.instrumentsServiceClient.shares(
        $instruments_pb.InstrumentsRequest(instrumentStatus: $instruments_pb.InstrumentStatus.INSTRUMENT_STATUS_BASE),
        options: _tinkoffApiService.callOptions,
      );
      final share = shares.instruments.firstWhereOrNull((share) => share.ticker == event.ticker);

      if (share == null) {
        emitter(AddPositionState.error(message: 'Инструмент ${event.ticker} не найден'));
        emitter(AddPositionState.notGot());
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

      /// !!!
      final portfolioPosition = responsePortfolioPosition != null
          ? ExpertPortfolioPosition.fromPP(responsePortfolioPosition, stockInstrument)
          : null;
      final intFrom = (DateTime.now().toUtc().subtract(const Duration(days: 350)).millisecondsSinceEpoch) ~/ 1000;
      final intTo = ((DateTime.now().toUtc().subtract(const Duration(days: 1)).millisecondsSinceEpoch) ~/ 1000);
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
                  averagePositionPrice: 0,
                  expectedYield: 0,
                  currentPrice: instrumentCandles.candles.last.close.toDouble,
                ),
            recommendAmount: event.balancer.getRecommendedAmount(stockInstrument.lotPrice, instrumentCandles.candles),
            shouldBuy: event.balancer.shouldBuy(instrumentCandles.candles),
          ),
        ),
      );
    } catch (error) {
      emitter(AddPositionState.error(message: error.toString()));
      emitter(AddPositionState.notGot());
    }
  }
}
