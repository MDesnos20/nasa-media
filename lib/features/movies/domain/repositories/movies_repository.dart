import '../../../../core/domain/entities/result.dart';
import '../entities/movie_entity.dart';
import '../entities/page_of_movies_entity.dart';

abstract class MoviesRepository {
  Future<Result<PageOfMoviesEntity>> getMoviesByPage(int page, String locale);

  Future<Result<MovieEntity>> getMovieById(int id, String locale);
}
