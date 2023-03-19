import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';

class HiveStorage {
  late final Box _pref;
  late final Box _stepBalancer;

  Future<void> init() async {
    Hive.init(Directory.current.path);
    Hive.registerAdapter(StepsBalancerAdapter());
    _pref = await Hive.openBox('pref');
    _stepBalancer = await Hive.openBox('balancer');
  }

  //API KEY
  String get apiKey => _pref.get('api_key') ?? '';
  Future<void> setApiKey(String apiKey) async {
    await _pref.put('api_key', apiKey);
  }

  //TRADE BALANCE
  double get tradeBalance => _pref.get('trade_balance') ?? 0.00;
  Future<void> setTradeBalance(double balance) async {
    await _pref.put('trade_balance', balance);
  }

  //STEPS BALANCER
  StepsBalancer get stepsBalancer =>
      _stepBalancer.get('steps_balancer') ??
      StepsBalancer.create(
        stepRateList: [1, 1, 1, 1, 1],
        tradeBalance: tradeBalance,
        stocksAmount: 25,
      );
  Future<void> setStepsBalancer(StepsBalancer balancer) async {
    await _stepBalancer.put('steps_balancer', balancer);
  }
}
