import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tinkoff_helper/common/extensions.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';
import 'package:tinkoff_helper/domain/portfolio/portfolio_position.dart';
import 'package:tinkoff_helper/domain/stock_instrument.dart';
import 'package:tinkoff_helper/network/generated/google/protobuf/timestamp.pb.dart';
import 'package:tinkoff_helper/network/generated/instruments.pb.dart' as inst_pb;
import 'package:tinkoff_helper/network/generated/marketdata.pb.dart';
import 'package:tinkoff_helper/network/generated/operations.pb.dart' as oper_pb;
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

part 'add_position_bloc.freezed.dart';

@freezed
class AddPositionEvent with _$AddPositionEvent {
  const AddPositionEvent._();

  const factory AddPositionEvent.getPositionByTicket({required String ticket, required StepsBalancer balancer}) =
      _GetPositionByTicketAddPositionEvent;
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
      (event, emitter) => event.map(getPositionByTicket: (event) => _getPosition(event, emitter)),
    );
  }

  final _tinkoffApiService = getIt<TinkoffApiService>();

  Future<void> _getPosition(_GetPositionByTicketAddPositionEvent event, Emitter<AddPositionState> emitter) async {
    emitter(AddPositionState.inProgress());
    try {
      final shares = await _tinkoffApiService.instrumentsServiceClient.shares(
        inst_pb.InstrumentsRequest(instrumentStatus: inst_pb.InstrumentStatus.INSTRUMENT_STATUS_BASE),
        options: _tinkoffApiService.callOptions,
      );
      final shareAr = shares.instruments.where((share) => share.ticker == event.ticket);
      if (shareAr.isEmpty) {
        emitter(AddPositionState.error(message: 'Инструмент ${event.ticket} не найден'));
        emitter(AddPositionState.notGot());
        return;
      }
      final share = shareAr.single;
      final price = await _tinkoffApiService.marketDataServiceClient.getLastPrices(
        GetLastPricesRequest(instrumentId: [share.figi]),
        options: _tinkoffApiService.callOptions,
      );
      final stockInstrument = StockInstrument.fromShare(share, price.lastPrices.single.price.toDouble);

      final portfolioResponse = await _tinkoffApiService.operationsServiceClient.getPortfolio(
        oper_pb.PortfolioRequest(
          accountId: _tinkoffApiService.accountId,
          currency: oper_pb.PortfolioRequest_CurrencyRequest.RUB,
        ),
        options: _tinkoffApiService.callOptions,
      );
      final responsePosition =
          portfolioResponse.positions.firstWhereOrNull((position) => position.figi == stockInstrument.figi);

      /// !!!
      final portfolioPosition =
          responsePosition != null ? PortfolioPosition.fromPP(responsePosition, stockInstrument) : null;
      final intFrom = (DateTime.now().toUtc().subtract(const Duration(days: 350)).millisecondsSinceEpoch) ~/ 1000;
      final intTo = ((DateTime.now().toUtc().subtract(const Duration(days: 1)).millisecondsSinceEpoch) ~/ 1000);
      final instrumentCandles = await _tinkoffApiService.marketDataServiceClient.getCandles(
        GetCandlesRequest(
          figi: share.figi,
          instrumentId: share.uid,
          interval: CandleInterval.CANDLE_INTERVAL_WEEK,
          from: Timestamp(seconds: fixnum.Int64(intFrom)),
          to: Timestamp(seconds: fixnum.Int64(intTo)),
        ),
        options: _tinkoffApiService.callOptions,
      );

      /// !!!
      final stepsPrices = event.balancer.stepsPrices(_getMinMaxPricesFromCandles(instrumentCandles.candles));

      final canBuy = _canBuy(instrumentCandles.candles);
      emitter(AddPositionState.notGot());
      // emitter(AddPositionState.got(
      //   expertPosition: ExpertPosition(
      //     instrument: stockInstrument,
      //     quantity: portfolioPosition.quantity.toInt(),
      //     recommendationQuantity: 1,
      //     stepsPrices: [1, 2, 3, 4, 5],
      //   ),
      // ));
    } catch (error) {
      emitter(AddPositionState.error(message: error.toString()));
      emitter(AddPositionState.notGot());
    }
  }

  List<double> _getMinMaxPricesFromCandles(List<HistoricCandle> candles) {
    double min = double.infinity;
    double max = 0.0;
    for (final candle in candles) {
      if (candle.high.toDouble > max) max = candle.high.toDouble;
      if (candle.low.toDouble < min) min = candle.low.toDouble;
    }
    return [min, max];
  }

  bool _canBuy(List<HistoricCandle> candles) {
    final lastCandles = candles.getRange(candles.length - 13, candles.length);
    double sum = 0.0;
    for (final candle in lastCandles) {
      sum += candle.close.toDouble;
    }
    final ma = sum / lastCandles.length;
    return ma < candles.last.close.toDouble;
  }
}
