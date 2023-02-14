import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/presentation/widgets/input_form_widget.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    required this.initialCameraPosition,
    required this.onMapCreated,
    required this.formKey,
    required this.latitudeController,
    required this.longitudeController,
    required this.submitValue,
    super.key,
  });

  final CameraPosition initialCameraPosition;
  final Function(GoogleMapController) onMapCreated;
  final TextEditingController latitudeController;
  final TextEditingController longitudeController;
  final GlobalKey<FormState> formKey;
  final void Function() submitValue;

  String? validatorLatitude(String? value) {
    if (value == null || value.isEmpty) {
      return 'Entrez une latitude';
    } else if (double.parse(value) < -90 || double.parse(value) > 90) {
      return 'La latitude -90 et 90 !';
    }
    return null;
  }

  String? validatorLongitude(String? value) {
    if (value == null || value.isEmpty) {
      return 'Entrez une longitude';
    } else if (double.parse(value) < -180 || double.parse(value) > 180) {
      return 'La longitude -180 et 180 !';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Form(
                  key: formKey,
                  child: Row(
                    children: [
                      InputFormWidget(
                        placeholder: 'Latitude',
                        controller: latitudeController,
                        validator: validatorLatitude,
                      ),
                      InputFormWidget(
                        placeholder: 'Longitude',
                        controller: longitudeController,
                        validator: validatorLongitude,
                      ),                      
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.topRight,
                          iconSize: 30,
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                                submitValue();
                                ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data'),),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            child: GoogleMap(
              initialCameraPosition: initialCameraPosition,
              onMapCreated: onMapCreated,
              mapType: MapType.satellite,
            ),
          ),
        ),
      ],
    );
  }
}
