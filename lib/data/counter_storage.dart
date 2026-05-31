import 'package:shared_preferences/shared_preferences.dart';

class CounterStorage {
  static const _key = 'counter';

  final _prefs = SharedPreferencesAsync();

  Future<int> read() async {
    final value = await _prefs.getInt(_key);
    return value ?? 0;
  }

  Future<void> write(int value) => _prefs.setInt(_key, value);
}
