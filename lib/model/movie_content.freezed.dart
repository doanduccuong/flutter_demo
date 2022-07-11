// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieContent _$MovieContentFromJson(Map<String, dynamic> json) {
  return _MovieContent.fromJson(json);
}

/// @nodoc
mixin _$MovieContent {
  @JsonKey(name: "backdrop_path")
  String? get a =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "vote_average")
  String? get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieContentCopyWith<MovieContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieContentCopyWith<$Res> {
  factory $MovieContentCopyWith(
          MovieContent value, $Res Function(MovieContent) then) =
      _$MovieContentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "backdrop_path") String? a,
      @JsonKey(name: "vote_average") String? voteAverage});
}

/// @nodoc
class _$MovieContentCopyWithImpl<$Res> implements $MovieContentCopyWith<$Res> {
  _$MovieContentCopyWithImpl(this._value, this._then);

  final MovieContent _value;
  // ignore: unused_field
  final $Res Function(MovieContent) _then;

  @override
  $Res call({
    Object? a = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieContentCopyWith<$Res>
    implements $MovieContentCopyWith<$Res> {
  factory _$$_MovieContentCopyWith(
          _$_MovieContent value, $Res Function(_$_MovieContent) then) =
      __$$_MovieContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "backdrop_path") String? a,
      @JsonKey(name: "vote_average") String? voteAverage});
}

/// @nodoc
class __$$_MovieContentCopyWithImpl<$Res>
    extends _$MovieContentCopyWithImpl<$Res>
    implements _$$_MovieContentCopyWith<$Res> {
  __$$_MovieContentCopyWithImpl(
      _$_MovieContent _value, $Res Function(_$_MovieContent) _then)
      : super(_value, (v) => _then(v as _$_MovieContent));

  @override
  _$_MovieContent get _value => super._value as _$_MovieContent;

  @override
  $Res call({
    Object? a = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$_MovieContent(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieContent implements _MovieContent {
  const _$_MovieContent(
      {@JsonKey(name: "backdrop_path") this.a,
      @JsonKey(name: "vote_average") this.voteAverage});

  factory _$_MovieContent.fromJson(Map<String, dynamic> json) =>
      _$$_MovieContentFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? a;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "vote_average")
  final String? voteAverage;

  @override
  String toString() {
    return 'MovieContent(a: $a, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieContent &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(voteAverage));

  @JsonKey(ignore: true)
  @override
  _$$_MovieContentCopyWith<_$_MovieContent> get copyWith =>
      __$$_MovieContentCopyWithImpl<_$_MovieContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieContentToJson(this);
  }
}

abstract class _MovieContent implements MovieContent {
  const factory _MovieContent(
          {@JsonKey(name: "backdrop_path") final String? a,
          @JsonKey(name: "vote_average") final String? voteAverage}) =
      _$_MovieContent;

  factory _MovieContent.fromJson(Map<String, dynamic> json) =
      _$_MovieContent.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get a;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "vote_average")
  String? get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$_MovieContentCopyWith<_$_MovieContent> get copyWith =>
      throw _privateConstructorUsedError;
}
