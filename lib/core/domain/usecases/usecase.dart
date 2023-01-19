import '../entities/result.dart';

abstract class UseCase<Type, Params> {
  Future<Result<Type>> call(Params params);
}
