// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieContent _$$_MovieContentFromJson(Map<String, dynamic> json) =>
    _$_MovieContent(
      backDropPath: json['backdrop_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MovieContentToJson(_$_MovieContent instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backDropPath,
      'vote_average': instance.voteAverage,
    };
