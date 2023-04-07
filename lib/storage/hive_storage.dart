import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';

class HiveStorage {
  late final Box _pref;
  late final Box _stepsBalancer;

  Future<void> init() async {
    Hive.init(Directory.current.path);
    _registerAdapters();
    _pref = await Hive.openBox('pref');
    _stepsBalancer = await Hive.openBox('balancer');
  }

  void _registerAdapters() {
    Hive.registerAdapter(StepsBalancerAdapter());
  }

  //API KEY
  String get apiKey => _pref.get('api_key') ?? '';
  Future<void> saveApiKey(String apiKey) async {
    await _pref.put('api_key', apiKey);
  }

  //STEPS BALANCER
  StepsBalancer get stepsBalancer =>
      _stepsBalancer.get('steps_balancer') ??
      const StepsBalancer.create(
        stepRateList: [1, 1, 1, 1, 1],
        tradeBalance: 0,
        stocksAmount: 25,
      );
  Future<void> saveStepsBalancer(StepsBalancer balancer) async {
    await _stepsBalancer.put('steps_balancer', balancer);
  }
}
