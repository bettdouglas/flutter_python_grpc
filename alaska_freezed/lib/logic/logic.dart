import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:chuck_api/chuck_api.dart';
import 'package:i_know_everything/logic/app_states.dart';

final chuckAPI = ChuckAPI();

class AppProvider with ChangeNotifier {
  
  AppState _appState = AppInitial();

  AppState get state => _appState;

  AppProvider() {
    load().then((value) {
      notifyListeners();
    });
  }

  Future load() async {
    // load joke categories and a random joke
    try{
    final response = await chuckAPI.getJokeCategories();
    final categories = response.fold(
      (l) {
        throw 'Failed to get categories.\n${l.message}';
      },
      (r) => r,
    );
    final jokeResponse = await chuckAPI.getRandomJoke(
        category: categories[Random().nextInt(categories.length)]);
    final joke = jokeResponse.fold(
      (l) => throw 'Error getting jokes.\n${l.message}',
      (r) => r,
    );
    await Future.delayed(Duration(seconds: 10));
    _appState = AppReady(categories, joke);
    } catch (e) {
      _appState = AppError(e.toString());
    }
  }
}

class ChuckProvider with ChangeNotifier {
  Joke joke;
  final List<String> categories;

  ChuckProvider(this.categories, this.joke);
}

class Loaded {
  final List<String> categories;
  final Joke joke;

  Loaded(this.categories, this.joke);
}
