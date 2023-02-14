import '../entities/localisation/localisation_entity.dart';
import '../repositories/google_map_repository.dart';

class GetLocalisationUseCase {

  GetLocalisationUseCase(this.repository);

  final GoogleMapRepository repository;

  LocalisationEntity call() {
    return repository.getLocalisation();
  }
}
