import 'package:flutter/material.dart';

class ExpertScreen extends StatefulWidget {
  const ExpertScreen({Key? key}) : super(key: key);

  @override
  State<ExpertScreen> createState() => _ExpertScreenState();
}

class _ExpertScreenState extends State<ExpertScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

/// Тут у нас будет виджеты с общим (1) торговым(2 *) и свободным(3) балансом, сила ступеней (4*), кол-во акций в торговле (5*). Ниже будет кнопка перехода на экран непосредственно акций и торговли
