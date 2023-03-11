import 'package:flutter/material.dart';
import 'package:tinkoff_helper/presentation/features/settings/screens/settings_screen.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          indicatorColor: Colors.black,
          tabsWidth: 59,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.settings)),
          ],
          contents: const [
            MyHomePage(title: 'Home Page'),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
