// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_of_movies_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageOfMoviesEntity {
  int get page => throw _privateConstructorUsedError;
  List<MovieEntity> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageOfMoviesEntityCopyWith<PageOfMoviesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageOfMoviesEntityCopyWith<$Res> {
  factory $PageOfMoviesEntityCopyWith(
          PageOfMoviesEntity value, $Res Function(PageOfMoviesEntity) then) =
      _$PageOfMoviesEntityCopyWithImpl<$Res>;
  $Res call(
      {int page, List<MovieEntity> results, int totalPages, int totalResults});
}

/// @nodoc
class _$PageOfMoviesEntityCopyWithImpl<$Res>
    implements $PageOfMoviesEntityCopyWith<$Res> {
  _$PageOfMoviesEntityCopyWithImpl(this._value, this._then);

  final PageOfMoviesEntity _value;
  // ignore: unused_field
  final $Res Function(PageOfMoviesEntity) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PageOfMoviesEntityCopyWith<$Res>
    implements $PageOfMoviesEntityCopyWith<$Res> {
  factory _$$_PageOfMoviesEntityCopyWith(_$_PageOfMoviesEntity value,
          $Res Function(_$_PageOfMoviesEntity) then) =
      __$$_PageOfMoviesEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page, List<MovieEntity> results, int totalPages, int totalResults});
}

/// @nodoc
class __$$_PageOfMoviesEntityCopyWithImpl<$Res>
    extends _$PageOfMoviesEntityCopyWithImpl<$Res>
    implements _$$_PageOfMoviesEntityCopyWith<$Res> {
  __$$_PageOfMoviesEntityCopyWithImpl(
      _$_PageOfMoviesEntity _value, $Res Function(_$_PageOfMoviesEntity) _then)
      : super(_value, (v) => _then(v as _$_PageOfMoviesEntity));

  @override
  _$_PageOfMoviesEntity get _value => super._value as _$_PageOfMoviesEntity;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_PageOfMoviesEntity(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageOfMoviesEntity implements _PageOfMoviesEntity {
  const _$_PageOfMoviesEntity(
      {required this.page,
      required final List<MovieEntity> results,
      required this.totalPages,
      required this.totalResults})
      : _results = results;

  @override
  final int page;
  final List<MovieEntity> _results;
  @override
  List<MovieEntity> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalPages;
  @override
  final int totalResults;

  @override
  String toString() {
    return 'PageOfMoviesEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageOfMoviesEntity &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$$_PageOfMoviesEntityCopyWith<_$_PageOfMoviesEntity> get copyWith =>
      __$$_PageOfMoviesEntityCopyWithImpl<_$_PageOfMoviesEntity>(
          this, _$identity);
}

abstract class _PageOfMoviesEntity implements PageOfMoviesEntity {
  const factory _PageOfMoviesEntity(
      {required final int page,
      required final List<MovieEntity> results,
      required final int totalPages,
      required final int totalResults}) = _$_PageOfMoviesEntity;

  @override
  int get page;
  @override
  List<MovieEntity> get results;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_PageOfMoviesEntityCopyWith<_$_PageOfMoviesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
