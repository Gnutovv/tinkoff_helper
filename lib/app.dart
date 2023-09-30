import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/android_form_app.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/bloc/portfolio_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/windows_form_app.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(
          create: (context) {
            String apiKey = getIt<HiveStorage>().apiKey;
            if (getIt<HiveStorage>().apiKey != '') {
              return SettingsBloc(apiKey: apiKey)..add(SettingsEvent.checkToken(apiKey: apiKey));
            } else {
              return SettingsBloc(apiKey: '');
            }
          },
        ),
        BlocProvider<ExpertSettingsBloc>(
          create: (context) => ExpertSettingsBloc(balancer: getIt<HiveStorage>().stepsBalancer),
        ),
        BlocProvider<ExpertBloc>(
          create: (context) => ExpertBloc(
            balancer: getIt<HiveStorage>().stepsBalancer,
            initPositions: getIt<HiveStorage>().expertPositions,
          ),
        ),
        BlocProvider<PortfolioBloc>(
          create: (context) => PortfolioBloc(portfolio: null),
        ),
      ],
      child: Platform.isWindows ? const WindowsFormApp() : const AndroidFormApp(),
    );
  }
}
