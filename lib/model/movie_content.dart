// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_content.freezed.dart';


part 'movie_content.g.dart';

@freezed
abstract class MovieContent with _$MovieContent {
  const factory MovieContent({
    @JsonKey(name: "backdrop_path") String? a,
    // ignore: invalid_annotation_target
    @JsonKey(name: "vote_average") String? voteAverage,
  }) = _MovieContent;

  factory MovieContent.fromJson(Map<String, dynamic> json) =>
      _$MovieContentFromJson(json);
}