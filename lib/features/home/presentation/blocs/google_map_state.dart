part of 'google_map_cubit.dart';

@freezed
class GoogleMapState with _$GoogleMapState {
  const factory GoogleMapState.launchMap(CameraPosition cameraPosition) = _LaunchMap;
  const factory GoogleMapState.loading() = _Loading;
}
