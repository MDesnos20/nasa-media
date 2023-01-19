import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/page_of_movies_entity.dart';
import '../repositories/movies_repository.dart';

class GetMoviesByPageUseCase extends UseCase<PageOfMoviesEntity, GetMoviesByPageUseCaseParams> {
  GetMoviesByPageUseCase(this.repository);

  final MoviesRepository repository;

  @override
  Future<Result<PageOfMoviesEntity>> call(GetMoviesByPageUseCaseParams params) async {
    return repository.getMoviesByPage(params.page, params.locale);
  }
}

class GetMoviesByPageUseCaseParams {
  const GetMoviesByPageUseCaseParams({
    required this.page,
    required this.locale,
  });

  final int page;
  final String locale;
}
