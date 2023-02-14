import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/geoloc/geoloc.dart';

import '../../domain/entities/localisation/localisation_entity.dart';

abstract class GoogleMapDatasSource {
  LocalisationEntity getLocalisation();
  Future<CameraPosition> getCameraPosition();
}

class GoogleMapDatasSourceImpl implements GoogleMapDatasSource {
  late LocalisationEntity _localisation = const LocalisationEntity(latitude: 43.702083, longitude: 112.019778);
  double zoom = 16.0;
  late GeolocInfo geolocInfo = GeolocInfoImpl();

  @override
  LocalisationEntity getLocalisation() {
    return _localisation;
  }

  @override
  Future<CameraPosition> getCameraPosition() async {
    try {
      final currentPosition = await geolocInfo.currentPosition;
      _localisation = LocalisationEntity(latitude: currentPosition.latitude, longitude: currentPosition.longitude);
      return CameraPosition(target: LatLng(_localisation.latitude, _localisation.longitude), zoom: 18, tilt: 0, bearing: 0);
    } catch (err) {
      return CameraPosition(target: LatLng(_localisation.latitude, _localisation.longitude), zoom: zoom, tilt: 0, bearing: 0);
    }

  }
}
