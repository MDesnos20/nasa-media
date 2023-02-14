import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../di/injection_container.dart';
import '../../domain/usecases/get_localisation_usecase.dart';
import '../blocs/google_map_cubit.dart';
import '../widgets/google_map_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  State<HomePage> createState() => HomePageState();

}

class HomePageState extends State<HomePage> {

  GoogleMapController? mapController;
  final _formKey = GlobalKey<FormState>();
  TextEditingController latitudeController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();

  @override
  void initState() {
    context.read<GoogleMapCubit>().initGoogleMap();
    super.initState();
  }

  @override
  void dispose() {
    mapController?.dispose();
    latitudeController.dispose();
    longitudeController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _submitPosition() {
    mapController?.animateCamera(CameraUpdate.newLatLngZoom(LatLng(double.parse(latitudeController.text), double.parse(longitudeController.text)), 20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GoogleMapCubit, GoogleMapState>(
        builder: (context, state) {
          return state.when(
            launchMap: (cameraPosition) {
              final localisation = sl<GetLocalisationUseCase>()();
              latitudeController.text = localisation.latitude.toString();
              longitudeController.text = localisation.longitude.toString();
              return GoogleMapWidget(
                initialCameraPosition: cameraPosition,
                onMapCreated: _onMapCreated,
                formKey: _formKey,
                latitudeController: latitudeController,
                longitudeController: longitudeController,
                submitValue: _submitPosition,
              );
            },
            loading: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
