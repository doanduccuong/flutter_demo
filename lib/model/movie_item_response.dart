import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_content.dart';

part 'movie_item_response.freezed.dart';
part 'movie_item_response.g.dart';

@freezed
 class MovieItemResponse with _$MovieItemResponse {
  const factory MovieItemResponse({
    int? page,
    List<MovieContent?>? results,
  }) = _MovieItemResponse;

  factory MovieItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieItemResponseFromJson(json);
}