import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hdi_flutter_bloc/data/model/movie.dart';
import 'package:hdi_flutter_bloc/data/movie_repository.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final MovieRepository _movieRepository;

  MovieCubit(this._movieRepository)
      : super(const MovieState(status: MovieStatus.initial));

  Future<void> getTrendingMovies() async {
    try {
      emit(const MovieState(status: MovieStatus.loading));
      final movies = await _movieRepository.getTrendingMovies();
      emit(MovieState(status: MovieStatus.success, movies: movies));
    } on Exception {
      emit(const MovieState(status: MovieStatus.failure));
    }
  }
}
