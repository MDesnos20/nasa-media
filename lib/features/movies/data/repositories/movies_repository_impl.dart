import 'dart:async';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/movie_entity.dart';
import '../../domain/entities/page_of_movies_entity.dart';
import '../../domain/repositories/movies_repository.dart';
import '../datasources/movie_remote_data_source.dart';
import '../models/movie_model.dart';
import '../models/page_of_movies_model.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  final MovieRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Result<MovieEntity>> getMovieById(int id, String locale) async {
    if (!(await networkInfo.isConnected)) {
      return const Result.failure(Failure.offline());
    }

    try {
      final result = await remoteDataSource.getMovieById(id, locale);
      final movie = MovieModel.fromJson(result);
      return Result.success(movie.toDomain());
    } on ServerException {
      return const Result.failure(Failure.server());
    }
  }

  @override
  Future<Result<PageOfMoviesEntity>> getMoviesByPage(int page, String locale) async {
    if (!(await networkInfo.isConnected)) {
      return const Result.failure(Failure.offline());
    }

    try {
      final result = await remoteDataSource.getMoviesByPage(page, locale);
      final pageOfMovies = PageOfMoviesModel.fromJson(result);
      return Result.success(pageOfMovies.toDomain());
    } on ServerException {
      return const Result.failure(Failure.server());
    }
  }
}
