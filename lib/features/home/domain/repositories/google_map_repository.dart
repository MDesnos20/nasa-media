import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../entities/localisation/localisation_entity.dart';

abstract class GoogleMapRepository {
  LocalisationEntity getLocalisation();
  Future<CameraPosition> getCameraPosition();
  void getCurrentPosition();
}
