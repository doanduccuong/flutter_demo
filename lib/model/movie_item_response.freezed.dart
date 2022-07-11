// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieItemResponse _$MovieItemResponseFromJson(Map<String, dynamic> json) {
  return _MovieItemResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieItemResponse {
  int? get page => throw _privateConstructorUsedError;
  List<MovieContent?>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieItemResponseCopyWith<MovieItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieItemResponseCopyWith<$Res> {
  factory $MovieItemResponseCopyWith(
          MovieItemResponse value, $Res Function(MovieItemResponse) then) =
      _$MovieItemResponseCopyWithImpl<$Res>;
  $Res call({int? page, List<MovieContent?>? results});
}

/// @nodoc
class _$MovieItemResponseCopyWithImpl<$Res>
    implements $MovieItemResponseCopyWith<$Res> {
  _$MovieItemResponseCopyWithImpl(this._value, this._then);

  final MovieItemResponse _value;
  // ignore: unused_field
  final $Res Function(MovieItemResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieContent?>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieItemResponseCopyWith<$Res>
    implements $MovieItemResponseCopyWith<$Res> {
  factory _$$_MovieItemResponseCopyWith(_$_MovieItemResponse value,
          $Res Function(_$_MovieItemResponse) then) =
      __$$_MovieItemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? page, List<MovieContent?>? results});
}

/// @nodoc
class __$$_MovieItemResponseCopyWithImpl<$Res>
    extends _$MovieItemResponseCopyWithImpl<$Res>
    implements _$$_MovieItemResponseCopyWith<$Res> {
  __$$_MovieItemResponseCopyWithImpl(
      _$_MovieItemResponse _value, $Res Function(_$_MovieItemResponse) _then)
      : super(_value, (v) => _then(v as _$_MovieItemResponse));

  @override
  _$_MovieItemResponse get _value => super._value as _$_MovieItemResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_MovieItemResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieContent?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieItemResponse implements _MovieItemResponse {
  const _$_MovieItemResponse({this.page, final List<MovieContent?>? results})
      : _results = results;

  factory _$_MovieItemResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieItemResponseFromJson(json);

  @override
  final int? page;
  final List<MovieContent?>? _results;
  @override
  List<MovieContent?>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieItemResponse(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieItemResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_MovieItemResponseCopyWith<_$_MovieItemResponse> get copyWith =>
      __$$_MovieItemResponseCopyWithImpl<_$_MovieItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieItemResponseToJson(this);
  }
}

abstract class _MovieItemResponse implements MovieItemResponse {
  const factory _MovieItemResponse(
      {final int? page,
      final List<MovieContent?>? results}) = _$_MovieItemResponse;

  factory _MovieItemResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieItemResponse.fromJson;

  @override
  int? get page;
  @override
  List<MovieContent?>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_MovieItemResponseCopyWith<_$_MovieItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
