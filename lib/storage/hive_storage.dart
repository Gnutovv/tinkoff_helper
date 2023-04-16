import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:tinkoff_helper/domain/expert/expert_position.dart';
import 'package:tinkoff_helper/domain/expert/steps_balancer.dart';

class HiveStorage {
  late final Box _pref;
  late final Box _expert;

  Future<void> init() async {
    Hive.init(Directory.current.path);
    _registerAdapters();
    _pref = await Hive.openBox('pref');
    _expert = await Hive.openBox('expert');
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
      _expert.get('balancer') ??
      const StepsBalancer(
        stepRateList: [1, 1, 1, 1, 1],
        tradeBalance: 0,
        stocksAmount: 25,
      );

  Future<void> saveStepsBalancer(StepsBalancer balancer) async {
    await _expert.put('balancer', balancer);
  }

  //EXPERT POSITIONS
  List<String> get expertPositions => _expert.get('positions') ?? <String>[];

  Future<void> saveExpertPositions(List<ExpertPosition?> positions) async {
    List<String> tickers = List.generate(positions.length, (index) => positions[index]!.instrument.ticker);
    await _expert.put('positions', tickers);
  }
}
