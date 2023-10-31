import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/bloc/utils/app_bloc_observer.dart';

import 'app.dart';

void startApp() async {
  Bloc.observer = AppBlocObserver.instance();
  Bloc.transformer = bloc_concurrency.sequential<Object?>();
  runZonedGuarded<void>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initDIService();
    await initServices();
    runApp(const App());
  }, (error, stackTrace) {
    if (kDebugMode) print('error: $error\n $stackTrace');
  });
}
