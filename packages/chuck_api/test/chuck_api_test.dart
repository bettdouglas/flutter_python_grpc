import 'package:chuck_api/chuck_api.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    ChuckAPI chuckAPI;

    setUp(() {
      chuckAPI = ChuckAPI();
    });

    test('First Test', () {
      expect(chuckAPI.isAwesome, isTrue);
    });

    test('ChuckAPI should get a list of categories', () async {
      final response = await chuckAPI.getJokeCategories();
      expect(response.isRight(),true);
    });

    test('ChuckAPI should get a joke on call', () async {
      final response = await chuckAPI.getRandomJoke(category: 'money');
      expect(response.isRight(), true);
    });
  });
}
