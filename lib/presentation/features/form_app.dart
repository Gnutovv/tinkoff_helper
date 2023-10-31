import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/common/loader/loader_widget.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/expert_screen.dart';
import 'package:tinkoff_helper/presentation/features/portfolio/screens/portfolio_screen.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/screens/settings_screen.dart';

class AndroidFormApp extends StatefulWidget {
  const AndroidFormApp({super.key});

  @override
  State<AndroidFormApp> createState() => _AndroidFormAppState();
}

class _AndroidFormAppState extends State<AndroidFormApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => MaterialApp(
        title: 'Tinkoff Helper',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tinkoff Helper'),
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              if (state.success) {
                setState(() {
                  currentPageIndex = index;
                });
              }
            },
            indicatorColor: Colors.yellowAccent,
            selectedIndex: state.success ? currentPageIndex : 2,
            destinations: <Widget>[
              NavigationDestination(
                selectedIcon: const Icon(Icons.cases_rounded),
                icon: Icon(Icons.cases_outlined, color: state.success ? Colors.black : Colors.grey),
                label: 'Портфель',
              ),
              NavigationDestination(
                selectedIcon: const Icon(Icons.science_rounded),
                icon: Icon(Icons.science_outlined, color: state.success ? Colors.black : Colors.grey),
                label: 'Советник',
              ),
              const NavigationDestination(
                selectedIcon: Icon(Icons.settings_rounded),
                icon: Icon(Icons.settings_outlined, color: Colors.black),
                label: 'Настройки',
              ),
            ],
          ),
          body: Stack(
            children: [
              <Widget>[
                const PortfolioScreen(),
                const ExpertScreen(),
                const SettingsScreen(),
              ][state.success ? currentPageIndex : 2],
              Positioned.fill(child: LoaderWidget(controller: getIt<LoaderController>())),
            ],
          ),
        ),
      ),
    );
  }
}
