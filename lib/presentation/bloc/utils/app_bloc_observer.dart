import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

import 'error_util.dart';

class AppBlocObserver extends BlocObserver {
  factory AppBlocObserver.instance() => _singleton ??= AppBlocObserver._();
  static AppBlocObserver? _singleton;
  AppBlocObserver._();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    l.vvvv('${bloc.runtimeType}(): ${change.currentState} ==> ${change.nextState}');
  }

  @override
  void onCreate(BlocBase<Object?> bloc) {
    super.onCreate(bloc);
    l.vvvv('${bloc.runtimeType}()');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event == null) return;
    l.vvvvv('${bloc.runtimeType}.add(${event.runtimeType})');
    final Object? state = bloc.state;
    if (state == null) return;
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    final Object? event = transition.event;
    final Object? currentState = transition.currentState;
    final Object? nextState = transition.nextState;
    if (event == null || currentState == null || nextState == null) return;
    l.vvvvvv('${bloc.runtimeType} ${event.runtimeType}: ${currentState.runtimeType}->${nextState.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    l.e(error, stackTrace);
    ErrorUtil.logError(
      error,
      stackTrace: stackTrace,
      hint: 'BLoC: ${bloc.runtimeType.toString()}',
    );
  }

  @override
  void onClose(BlocBase<Object?> bloc) {
    super.onClose(bloc);
    l.vvvv('${bloc.runtimeType}.close()');
  }
}
