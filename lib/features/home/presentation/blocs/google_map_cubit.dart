import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/usecases/get_camera_position.dart';
import '../../domain/usecases/get_localisation_usecase.dart';

part 'google_map_cubit.freezed.dart';
part 'google_map_state.dart';

class GoogleMapCubit extends Cubit<GoogleMapState> {

  GoogleMapCubit({
    required this.getLocalisationUseCase,
    required this.getCameraPositionUseCase,
    required this.getCurrentPositionUseCase,
  }) : super(const GoogleMapState.loading());

  final GetCameraPositionUseCase getCameraPositionUseCase;
  final GetLocalisationUseCase getLocalisationUseCase;
  final GetCameraPositionUseCase getCurrentPositionUseCase;

  void initGoogleMap() async {
    final cameraPosition = await getCameraPositionUseCase();
    emit(GoogleMapState.launchMap(cameraPosition));

  }

}
