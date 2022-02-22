part of 'movie_cubit.dart';

enum MovieStatus { initial, loading, success, failure }

extension MovieStatusExtension on MovieStatus {
  bool get isInitial => this == MovieStatus.initial;
  bool get isLoading => this == MovieStatus.loading;
  bool get isSuccess => this == MovieStatus.success;
  bool get isFailure => this == MovieStatus.failure;
}

class MovieState extends Equatable {
  final MovieStatus status;
  final List<Movie> movies;
  const MovieState({required this.status, List<Movie> movies = const <Movie>[]})
      : movies = movies;
  @override
  List<Object> get props {
    return [movies];
  }
}
