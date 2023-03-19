import 'dart:io';

import 'package:hive/hive.dart';

class HiveStorage {
  late final Box _pref;

  Future<void> init() async {
    Hive.init(Directory.current.path);
    _pref = await Hive.openBox('pref');
  }

  String get apiKey => _pref.get('api_key') ?? '';
  Future<void> setApiKey(String apiKey) async {
    await _pref.put('api_key', apiKey);
  }

  double get tradeBalance => _pref.get('trade_balance') ?? 0.00;
  Future<void> setTradeBalance(double balance) async {
    await _pref.put('trade_balance', balance);
  }
}
