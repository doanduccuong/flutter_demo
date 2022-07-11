// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieItemResponse _$$_MovieItemResponseFromJson(Map<String, dynamic> json) =>
    _$_MovieItemResponse(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MovieContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieItemResponseToJson(
        _$_MovieItemResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
