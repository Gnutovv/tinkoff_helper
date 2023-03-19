import 'dart:io';

import 'package:hive/hive.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';

class HiveStorage {
  late final Box _pref;
  late final Box _stepBalancer;

  Future<void> init() async {
    Hive.init(Directory.current.path);
    _pref = await Hive.openBox('pref');
    _stepBalancer = await Hive.openBox('balancer');
  }

  String get apiKey => _pref.get('api_key') ?? '';

  Future<void> setApiKey(String apiKey) async {
    await _pref.put('api_key', apiKey);
  }

  double get tradeBalance => _pref.get('trade_balance') ?? 0.00;

  Future<void> setTradeBalance(double balance) async {
    await _pref.put('trade_balance', balance);
  }

  StepsBalancer get stepsBalancer =>
      _stepBalancer.get('step_balancer') ??
      StepsBalancer(
        stepRateList: [1, 1, 1, 1, 1],
        tradeBalance: tradeBalance,
        stocksAmount: 25,
      );
}
