// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_of_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageOfMoviesModel _$PageOfMoviesModelFromJson(Map<String, dynamic> json) {
  return _PageOfMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$PageOfMoviesModel {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageOfMoviesModelCopyWith<PageOfMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageOfMoviesModelCopyWith<$Res> {
  factory $PageOfMoviesModelCopyWith(
          PageOfMoviesModel value, $Res Function(PageOfMoviesModel) then) =
      _$PageOfMoviesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieModel> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$PageOfMoviesModelCopyWithImpl<$Res>
    implements $PageOfMoviesModelCopyWith<$Res> {
  _$PageOfMoviesModelCopyWithImpl(this._value, this._then);

  final PageOfMoviesModel _value;
  // ignore: unused_field
  final $Res Function(PageOfMoviesModel) _then;

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
              as List<MovieModel>,
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
abstract class _$$_PageOfMoviesModelCopyWith<$Res>
    implements $PageOfMoviesModelCopyWith<$Res> {
  factory _$$_PageOfMoviesModelCopyWith(_$_PageOfMoviesModel value,
          $Res Function(_$_PageOfMoviesModel) then) =
      __$$_PageOfMoviesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieModel> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_PageOfMoviesModelCopyWithImpl<$Res>
    extends _$PageOfMoviesModelCopyWithImpl<$Res>
    implements _$$_PageOfMoviesModelCopyWith<$Res> {
  __$$_PageOfMoviesModelCopyWithImpl(
      _$_PageOfMoviesModel _value, $Res Function(_$_PageOfMoviesModel) _then)
      : super(_value, (v) => _then(v as _$_PageOfMoviesModel));

  @override
  _$_PageOfMoviesModel get _value => super._value as _$_PageOfMoviesModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_PageOfMoviesModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
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
@JsonSerializable()
class _$_PageOfMoviesModel implements _PageOfMoviesModel {
  const _$_PageOfMoviesModel(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'results') required final List<MovieModel> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$_PageOfMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PageOfMoviesModelFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  final List<MovieModel> _results;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'PageOfMoviesModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageOfMoviesModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$$_PageOfMoviesModelCopyWith<_$_PageOfMoviesModel> get copyWith =>
      __$$_PageOfMoviesModelCopyWithImpl<_$_PageOfMoviesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageOfMoviesModelToJson(
      this,
    );
  }
}

abstract class _PageOfMoviesModel implements PageOfMoviesModel {
  const factory _PageOfMoviesModel(
          {@JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'results') required final List<MovieModel> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_PageOfMoviesModel;

  factory _PageOfMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_PageOfMoviesModel.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_PageOfMoviesModelCopyWith<_$_PageOfMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
