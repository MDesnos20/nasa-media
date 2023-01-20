import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/apod_entity.dart';
import '../repositories/apod_repository.dart';

class GetApodMediaUseCase extends UseCase<ApodEntity, GetApodMediaUseCaseParams> {
  GetApodMediaUseCase(this.repository);

  final ApodRepository repository;

  @override
  Future<Result<List<ApodEntity>>> call(GetApodMediaUseCaseParams params) async {
    return repository.getApodMedia(params.count);
  }
}

class GetApodMediaUseCaseParams {
  const GetApodMediaUseCaseParams({
    required this.count,
  });

  final int count;
}
