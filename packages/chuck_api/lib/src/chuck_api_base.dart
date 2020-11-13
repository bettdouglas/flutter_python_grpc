import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'joke.dart';
import 'package:http/http.dart' as http;


class ChuckAPI {
  bool get isAwesome => true;

  Future<Either<JokeError,List<String>>> getJokeCategories() async {
    var response = await http.get('https://api.chucknorris.io/jokes/categories');
    if(response.statusCode == 200) {
      return Right((jsonDecode(response.body) as List).map((e) => e as String).toList());
    } else {
      return Left(JokeError(response.body, response.statusCode));
    }
  }

  Future<Either<JokeError,Joke>> getRandomJoke({String category}) async {
    final url = category == null ? 'https://api.chucknorris.io/jokes/random' : 'https://api.chucknorris.io/jokes/random?category=$category';
    var response = await http.get(url);
    if(response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Right(Joke(
        id: data['id'],
        url: data['url'],
        joke: data['value']
      ),);
    } else {
      return Left(JokeError(response.body, response.statusCode));
    }
  }
}