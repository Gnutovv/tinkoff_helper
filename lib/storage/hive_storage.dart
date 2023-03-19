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
  StepsBalancer get stepsBalancer => StepsBalancer(
        stepRateList: _stepBalancer.get('steps_rate') ?? [1, 1, 1, 1, 1],
        tradeBalance: tradeBalance,
        stocksAmount: _stepBalancer.get('stocks_amount') ?? 25,
      );

  Future<void> setStepsBalancer(StepsBalancer balancer) async {
    await _stepBalancer.put('steps_rate', balancer.stepRateList);
    await _stepBalancer.put('stocks_amount', balancer.stocksAmount);
  }
}
