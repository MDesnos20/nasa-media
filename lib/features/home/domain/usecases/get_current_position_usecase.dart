import '../repositories/google_map_repository.dart';

class GetCurrentPositionUseCase {

  GetCurrentPositionUseCase(this.repository);

  final GoogleMapRepository repository;

  void call() {
    return repository.getCurrentPosition();
  }
}
