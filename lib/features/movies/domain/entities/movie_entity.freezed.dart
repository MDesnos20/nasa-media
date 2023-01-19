// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  double get ratingAverage => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String posterPath,
      double ratingAverage,
      int ratingCount,
      String overview});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res> implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  final MovieEntity _value;
  // ignore: unused_field
  final $Res Function(MovieEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? ratingAverage = freezed,
    Object? ratingCount = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      ratingAverage: ratingAverage == freezed
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieEntityCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$$_MovieEntityCopyWith(
          _$_MovieEntity value, $Res Function(_$_MovieEntity) then) =
      __$$_MovieEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String posterPath,
      double ratingAverage,
      int ratingCount,
      String overview});
}

/// @nodoc
class __$$_MovieEntityCopyWithImpl<$Res> extends _$MovieEntityCopyWithImpl<$Res>
    implements _$$_MovieEntityCopyWith<$Res> {
  __$$_MovieEntityCopyWithImpl(
      _$_MovieEntity _value, $Res Function(_$_MovieEntity) _then)
      : super(_value, (v) => _then(v as _$_MovieEntity));

  @override
  _$_MovieEntity get _value => super._value as _$_MovieEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? ratingAverage = freezed,
    Object? ratingCount = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_MovieEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      ratingAverage: ratingAverage == freezed
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MovieEntity implements _MovieEntity {
  const _$_MovieEntity(
      {required this.id,
      required this.title,
      required this.posterPath,
      required this.ratingAverage,
      required this.ratingCount,
      required this.overview});

  @override
  final int id;
  @override
  final String title;
  @override
  final String posterPath;
  @override
  final double ratingAverage;
  @override
  final int ratingCount;
  @override
  final String overview;

  @override
  String toString() {
    return 'MovieEntity(id: $id, title: $title, posterPath: $posterPath, ratingAverage: $ratingAverage, ratingCount: $ratingCount, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.ratingAverage, ratingAverage) &&
            const DeepCollectionEquality()
                .equals(other.ratingCount, ratingCount) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(ratingAverage),
      const DeepCollectionEquality().hash(ratingCount),
      const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      __$$_MovieEntityCopyWithImpl<_$_MovieEntity>(this, _$identity);
}

abstract class _MovieEntity implements MovieEntity {
  const factory _MovieEntity(
      {required final int id,
      required final String title,
      required final String posterPath,
      required final double ratingAverage,
      required final int ratingCount,
      required final String overview}) = _$_MovieEntity;

  @override
  int get id;
  @override
  String get title;
  @override
  String get posterPath;
  @override
  double get ratingAverage;
  @override
  int get ratingCount;
  @override
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
