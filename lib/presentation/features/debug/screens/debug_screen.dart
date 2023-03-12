import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/presentation/features/debug/bloc/debug_bloc.dart';

class DebugScreen extends StatefulWidget {
  const DebugScreen({Key? key}) : super(key: key);

  @override
  State<DebugScreen> createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DebugBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () => bloc.add(const DebugEvent.registerAccount()),
                child: const Text('Регистрация аккаунта')),
            ElevatedButton(
                onPressed: () => bloc.add(const DebugEvent.setThousandCash()), child: const Text('Начислить 10000 💵')),
            ElevatedButton(
                onPressed: () => bloc.add(const DebugEvent.getBalance()), child: const Text('Узнать баланс')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () => bloc.add(const DebugEvent.getProfile()), child: const Text('Получить портфель')),
            ElevatedButton(
                onPressed: () => bloc.add(const DebugEvent.getStockInfo(ticket: 'AAPL')),
                child: const Text('Получить инфу об Apple')),
            ElevatedButton(
                onPressed: () => bloc.add(const DebugEvent.buyStock(ticket: 'AAPL', amount: 1)),
                child: const Text('Купить Apple')),
          ],
        ),
      ],
    );
  }
}
