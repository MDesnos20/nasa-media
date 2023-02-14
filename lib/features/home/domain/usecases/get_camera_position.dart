import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../repositories/google_map_repository.dart';

class GetCameraPositionUseCase {

  GetCameraPositionUseCase(this.repository);

  final GoogleMapRepository repository;

  Future<CameraPosition> call() {
    return repository.getCameraPosition();
  }
}
