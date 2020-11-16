class Joke {
  final String id,url,joke;

  Joke({this.id, this.url, this.joke});
}

class JokeError {
  final String message;
  final int statusCode;

  JokeError(this.message, this.statusCode);
}