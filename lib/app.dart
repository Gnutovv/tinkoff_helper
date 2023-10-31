import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/form_app.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/bloc/portfolio_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';
import 'package:tinkoff_helper/storage/secure_storage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(
          create: (context) {
            String apiKey = getIt<SecureStorage>().key;
            if (apiKey != '-1') {
              return SettingsBloc()..add(SettingsEvent.checkToken(apiKey: apiKey));
            } else {
              return SettingsBloc();
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
      child: const AndroidFormApp(),
    );
  }
}
