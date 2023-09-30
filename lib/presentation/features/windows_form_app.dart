import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/common/loader/loader_widget.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/vertical_tabs.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/windows/expert_screen.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/screens/windows/portfolio_screen.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/screens/windows/settings_screen.dart';
import 'package:tinkoff_helper/presentation/features/settings/common/need_authorize_placeholder.dart';

class WindowsFormApp extends StatelessWidget {
  const WindowsFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinkoff Helper',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tinkoff Helper'),
        ),
        body: Stack(children: [
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) => VerticalTabs(
              direction: TextDirection.ltr,
              contentScrollAxis: Axis.horizontal,
              initialIndex: 0,
              selectedTabBackgroundColor: Colors.yellow,
              tabBackgroundColor: const Color(0xFFb5b50b),
              tabsShadowColor: Colors.yellow,
              indicatorWidth: 0,
              tabsWidth: 59,
              tabs: const [
                Tab(icon: Icon(Icons.cases_rounded)),
                Tab(icon: Icon(Icons.science_rounded)),
                Tab(icon: Icon(Icons.settings)),
              ],
              contents: [
                state.tokenChecked ? const PortfolioScreen() : const NeedAuthorizePlaceholder(),
                state.tokenChecked ? const ExpertScreen() : const NeedAuthorizePlaceholder(),
                const SettingsScreen(),
              ],
            ),
          ),
          Positioned.fill(child: LoaderWidget(controller: getIt<LoaderController>())),
        ]),
      ),
    );
  }
}
