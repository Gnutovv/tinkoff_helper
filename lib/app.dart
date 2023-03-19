import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/debug/bloc/debug_bloc.dart';
import 'package:tinkoff_helper/presentation/features/debug/screens/debug_screen.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/expert_screen.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/screens/settings_screen.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/need_authorize_placeholder.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

import 'common/loader/loader_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DebugBloc>(create: (context) => DebugBloc()),
        BlocProvider<SettingsBloc>(
          create: (context) => SettingsBloc(apiKey: getIt<HiveStorage>().apiKey),
        ),
        BlocProvider<ExpertBloc>(
          create: (context) => ExpertBloc(balancer: getIt<HiveStorage>().stepsBalancer),
        ),
      ],
      child: MaterialApp(
        title: 'Tinkoff Helper',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tinkoff Helper'),
          ),
          body: Stack(children: [
            BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
              return VerticalTabs(
                direction: TextDirection.ltr,
                contentScrollAxis: Axis.vertical,
                initialIndex: 3,
                selectedTabBackgroundColor: Colors.yellow,
                tabBackgroundColor: const Color(0xFFb5b50b),
                tabsShadowColor: Colors.yellow,
                indicatorWidth: 0,
                tabsWidth: 59,
                tabs: const [
                  Tab(icon: Icon(Icons.cases_rounded)),
                  Tab(icon: Icon(Icons.science_rounded)),
                  Tab(icon: Icon(Icons.search_sharp)),
                  Tab(icon: Icon(Icons.settings)),
                  Tab(icon: Icon(Icons.developer_board_rounded)),
                ],
                contents: [
                  state.hasUserAccount ? const Center() : const NeedAuthorizePlaceholder(),
                  state.hasUserAccount ? const ExpertScreen() : const NeedAuthorizePlaceholder(),
                  state.hasUserAccount ? const Center() : const NeedAuthorizePlaceholder(),
                  const SettingsScreen(),
                  state.hasUserAccount ? const DebugScreen() : const NeedAuthorizePlaceholder(),
                ],
              );
            }),
            Positioned.fill(child: LoaderWidget(controller: getIt<LoaderController>())),
          ]),
        ),
      ),
    );
  }
}
