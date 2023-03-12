import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_bloc.freezed.dart';

@freezed
class DebugEvent with _$DebugEvent {
  const DebugEvent._();

  const factory DebugEvent.registerAccount() = _RegisterAccountDebugEvent;

  const factory DebugEvent.setThousandCash() = _SetThousandCashDebugEvent;

  const factory DebugEvent.getBalance() = _GetBalanceDebugEvent;

  const factory DebugEvent.getProfile() = _GetProfileDebugEvent;

  const factory DebugEvent.getStockInfo({required String ticket}) = _GetStockInfoDebugEvent;

  const factory DebugEvent.buyStock({required String ticket, required int amount}) = _BuyStockDebugEvent;
}

@freezed
class DebugState with _$DebugState {
  bool get progress => maybeMap<bool>(
        orElse: () => false,
        inProgress: (state) => true,
      );

  bool get hasError => maybeMap<bool>(
        orElse: () => false,
        error: (state) => true,
      );

  String? get errorMessage => maybeMap<String?>(
        orElse: () => null,
        error: (state) => state.message,
      );

  const DebugState._();

  factory DebugState.initialized() = _InitializedDebugState;

  factory DebugState.inProgress() = _InProgressDebugState;

  factory DebugState.error({required String message}) = _ErrorDebugState;
}

class DebugBloc extends Bloc<DebugEvent, DebugState> {
  //final TinkoffInvestApi api;

  DebugBloc() : super(DebugState.initialized()) {
    on<DebugEvent>(
      (event, emitter) => event.map(
        registerAccount: (event) => _registerAccount(event, emitter),
        setThousandCash: (event) => _setThousandCash(event, emitter),
        getBalance: (event) => _getBalance(event, emitter),
        getProfile: (event) => _getProfile(event, emitter),
        getStockInfo: (event) => _getStockInfo(event, emitter),
        buyStock: (event) => _buyStock(event, emitter),
      ),
    );
  }

  Future<void> _registerAccount(_RegisterAccountDebugEvent event, Emitter<DebugState> emitter) async {
    emitter(DebugState.inProgress());
    try {} on Object catch (error) {
      print(error);
      emitter(DebugState.error(message: error.toString()));
    } finally {
      emitter(DebugState.initialized());
    }
  }

  Future<void> _setThousandCash(_SetThousandCashDebugEvent event, Emitter<DebugState> emitter) async {
    emitter(DebugState.inProgress());
    try {} on Object catch (error) {
      print(error);
      emitter(DebugState.error(message: error.toString()));
    } finally {
      emitter(DebugState.initialized());
    }
  }

  Future<void> _getBalance(_GetBalanceDebugEvent event, Emitter<DebugState> emitter) async {
    emitter(DebugState.inProgress());
    try {} on Object catch (error) {
      print(error);
      emitter(DebugState.error(message: error.toString()));
    } finally {
      emitter(DebugState.initialized());
    }
  }

  Future<void> _getProfile(_GetProfileDebugEvent event, Emitter<DebugState> emitter) async {
    emitter(DebugState.inProgress());
    try {} on Object catch (error) {
      print(error);
      emitter(DebugState.error(message: error.toString()));
    } finally {
      emitter(DebugState.initialized());
    }
  }

  Future<void> _getStockInfo(_GetStockInfoDebugEvent event, Emitter<DebugState> emitter) async {
    emitter(DebugState.inProgress());
    try {} on Object catch (error) {
      print(error);
      emitter(DebugState.error(message: error.toString()));
    } finally {
      emitter(DebugState.initialized());
    }
  }

  Future<void> _buyStock(_BuyStockDebugEvent event, Emitter<DebugState> emitter) async {
    emitter(DebugState.inProgress());
    try {} on Object catch (error) {
      print(error);
      emitter(DebugState.error(message: error.toString()));
    } finally {
      emitter(DebugState.initialized());
    }
  }
}
