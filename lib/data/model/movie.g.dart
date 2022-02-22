// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int? ?? 0,
    )
      ..title = json['title'] as String
      ..originalTitle = json['originalTitle'] as String
      ..posterPath = json['posterPath'] as String
      ..popularity = (json['popularity'] as num).toDouble()
      ..video = json['video'] as bool;

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'posterPath': instance.posterPath,
      'popularity': instance.popularity,
      'video': instance.video,
    };
