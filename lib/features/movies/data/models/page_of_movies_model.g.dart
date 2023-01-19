// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_of_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageOfMoviesModel _$$_PageOfMoviesModelFromJson(Map<String, dynamic> json) =>
    _$_PageOfMoviesModel(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_PageOfMoviesModelToJson(
        _$_PageOfMoviesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
