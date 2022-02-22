import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie extends Equatable {
  int id;
  late String title;
  late String originalTitle;
  late String posterPath;
  late double popularity;
  late bool video;

  Movie({this.id = 0});

  @override
  List<Object> get props =>
      [id, title, originalTitle, posterPath, popularity, video];
}
