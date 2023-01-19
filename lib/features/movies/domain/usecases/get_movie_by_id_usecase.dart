import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/movie_entity.dart';
import '../repositories/movies_repository.dart';

class GetMovieByIdUseCase extends UseCase<MovieEntity, GetMovieByIdUseCaseParams> {
  GetMovieByIdUseCase(this.repository);

  final MoviesRepository repository;

  @override
  Future<Result<MovieEntity>> call(GetMovieByIdUseCaseParams params) async {
    return repository.getMovieById(params.id, params.locale);
  }
}

class GetMovieByIdUseCaseParams {
  const GetMovieByIdUseCaseParams({
    required this.id,
    required this.locale,
  });

  final int id;
  final String locale;
}
