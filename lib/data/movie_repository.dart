import 'model/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getTrendingMovies();
}

class MovieDatabaseRepository implements MovieRepository {
  @override
  Future<List<Movie>> getTrendingMovies() {
    return Future.delayed(const Duration(seconds: 1), () {
      return List<Movie>.generate(10, (index) => Movie(id: index));
    });
  }
}
