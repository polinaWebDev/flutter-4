import 'package:flutter/foundation.dart';

import '../data/counter_storage.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterStorage _storage;

  int _count = 0;

  CounterViewModel(this._storage);

  int get count => _count;

  Future<void> load() async {
    _count = await _storage.read();
    notifyListeners();
  }

  void increment() {
    _count++;
    notifyListeners();
    _storage.write(_count);
  }
}
