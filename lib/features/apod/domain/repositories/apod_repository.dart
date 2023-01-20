import '../../../../core/domain/entities/result.dart';
import '../entities/apod_entity.dart';

abstract class ApodRepository {

  Future<Result<List<ApodEntity>>> getApodMedia(int count);
}
