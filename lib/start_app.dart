import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/presentation/bloc/utils/app_bloc_observer.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

import 'app.dart';

void startApp() {
  Bloc.observer = AppBlocObserver.instance();
  Bloc.transformer = bloc_concurrency.sequential<Object?>();
  runZonedGuarded<void>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initLocatorService();
    getIt<TinkoffApiService>().init();
    await getIt<HiveStorage>().init();
    runApp(const App());
  }, (error, stackTrace) {
    if (kDebugMode) print('error: $error\n $stackTrace');
  });
}
