import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/geoloc/geoloc.dart';
import '../../domain/entities/localisation/localisation_entity.dart';
import '../../domain/repositories/google_map_repository.dart';
import '../datasources/google_map_data_source.dart';


class GoogleMapRepositoryImpl implements GoogleMapRepository {

  GoogleMapRepositoryImpl({
    required this.googleMapDataSource, 
    required this.geolocInfo,
  });

  final GoogleMapDatasSource googleMapDataSource;
  final GeolocInfo geolocInfo;

  @override
  LocalisationEntity getLocalisation() {
    return googleMapDataSource.getLocalisation();
  }

  @override
  Future<CameraPosition> getCameraPosition() {
    return googleMapDataSource.getCameraPosition();
  }

  @override
  void getCurrentPosition() async {
    var pos = await geolocInfo.currentPosition;
  }

}
