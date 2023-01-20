import '../entities/result.dart';

abstract class UseCase<Type, Params> {
  Future<Result<dynamic>> call(Params params);
}
