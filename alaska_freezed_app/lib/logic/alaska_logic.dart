import 'package:flutter/foundation.dart';
import 'package:i_know_everything/logic/app_states.dart';

class DataProvider<T> with ChangeNotifier {
  DataState<T> dataState = DataInitial();

  final Future<T> getter;

  DataProvider(this.getter) {
    _init();
  }

  Future _init() async {
    print('Initializing');
    dataState = DataLoading();
    notifyListeners();

    try {
      final response = await getter;
      dataState = DataReady(response);

      notifyListeners();
    } catch (e, st) {
      dataState = DataError(e.toString(), st);
      notifyListeners();
    }
  }

  Future get update => _init();
}
