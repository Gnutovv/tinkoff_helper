import 'package:flutter/material.dart';
import 'package:tinkoff_helper/presentation/features/settings/screens/settings_screen.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

class App extends StatelessWidget {
  const App({super.key});

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
        body: VerticalTabs(
          direction: TextDirection.ltr,
          selectedTabBackgroundColor: Colors.yellow,
          tabBackgroundColor: const Color(0xFFb5b50b),
          tabsShadowColor: Colors.yellow,
          indicatorWidth: 0,
          tabsWidth: 59,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.settings)),
          ],
          contents: const [
            Center(child: Text('Home Page')),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
