import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = const FlutterSecureStorage();
  String key = '-1';

  Future<void> init() async {
    key = await _storage.read(key: 'key') ?? '-1';
  }

  Future<void> saveKey(String newKey) async {
    key = newKey;
    await _storage.write(key: 'key', value: key);
  }
}
