// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @HiveField(0)
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'vote_average')
  double get ratingAverage => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'vote_count')
  int get ratingCount => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'overview')
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int id,
      @HiveField(1) @JsonKey(name: 'title') String title,
      @HiveField(2) @JsonKey(name: 'poster_path') String posterPath,
      @HiveField(3) @JsonKey(name: 'vote_average') double ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') int ratingCount,
      @HiveField(5) @JsonKey(name: 'overview') String overview});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

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
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int id,
      @HiveField(1) @JsonKey(name: 'title') String title,
      @HiveField(2) @JsonKey(name: 'poster_path') String posterPath,
      @HiveField(3) @JsonKey(name: 'vote_average') double ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') int ratingCount,
      @HiveField(5) @JsonKey(name: 'overview') String overview});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, (v) => _then(v as _$_MovieModel));

  @override
  _$_MovieModel get _value => super._value as _$_MovieModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? ratingAverage = freezed,
    Object? ratingCount = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_MovieModel(
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
@JsonSerializable()
@HiveType(typeId: 0)
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {@HiveField(0) @JsonKey(name: 'id') required this.id,
      @HiveField(1) @JsonKey(name: 'title') required this.title,
      @HiveField(2) @JsonKey(name: 'poster_path') required this.posterPath,
      @HiveField(3) @JsonKey(name: 'vote_average') required this.ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') required this.ratingCount,
      @HiveField(5) @JsonKey(name: 'overview') required this.overview});

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'title')
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @HiveField(3)
  @JsonKey(name: 'vote_average')
  final double ratingAverage;
  @override
  @HiveField(4)
  @JsonKey(name: 'vote_count')
  final int ratingCount;
  @override
  @HiveField(5)
  @JsonKey(name: 'overview')
  final String overview;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, posterPath: $posterPath, ratingAverage: $ratingAverage, ratingCount: $ratingCount, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
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

  @JsonKey(ignore: true)
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
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {@HiveField(0)
      @JsonKey(name: 'id')
          required final int id,
      @HiveField(1)
      @JsonKey(name: 'title')
          required final String title,
      @HiveField(2)
      @JsonKey(name: 'poster_path')
          required final String posterPath,
      @HiveField(3)
      @JsonKey(name: 'vote_average')
          required final double ratingAverage,
      @HiveField(4)
      @JsonKey(name: 'vote_count')
          required final int ratingCount,
      @HiveField(5)
      @JsonKey(name: 'overview')
          required final String overview}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'title')
  String get title;
  @override
  @HiveField(2)
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @HiveField(3)
  @JsonKey(name: 'vote_average')
  double get ratingAverage;
  @override
  @HiveField(4)
  @JsonKey(name: 'vote_count')
  int get ratingCount;
  @override
  @HiveField(5)
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
