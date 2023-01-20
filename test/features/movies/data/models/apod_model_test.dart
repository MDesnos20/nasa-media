import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:socle/features/apod/data/models/apod_model.dart';
import 'package:socle/features/apod/domain/entities/apod_entity.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const apodModel = ApodModel(
    date:'2023-01-19',
    explanation:"A broad expanse of glowing gas and dust presents a bird-like visage to astronomers from planet Earth, suggesting its popular moniker - The Seagull Nebula. Using narrowband image data, this 3-panel mosaic of the cosmic bird covers a 2.5 degree swath across the plane of the Milky Way, near the direction of Sirius, alpha star of the constellation Canis Major. Likely part of a larger shell structure swept up by successive supernova explosions, the broad Seagull Nebula is cataloged as Sh2-296 and IC 2177. The prominent bluish arc below and right of center is a bow shock from runaway star FN Canis Majoris. This complex of gas and dust clouds with other stars of the Canis Majoris OB1 association spans over 200 light-years at the Seagull Nebula's estimated 3,800 light-year distance.",
    hdurl:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_2194p.jpg',
    media_type: 'image',
    title:'The Seagull Nebula',
    url:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_1097p.jpg',
  );

  const apodEntity = ApodEntity(
    date:'2023-01-19',
    explanation:"A broad expanse of glowing gas and dust presents a bird-like visage to astronomers from planet Earth, suggesting its popular moniker - The Seagull Nebula. Using narrowband image data, this 3-panel mosaic of the cosmic bird covers a 2.5 degree swath across the plane of the Milky Way, near the direction of Sirius, alpha star of the constellation Canis Major. Likely part of a larger shell structure swept up by successive supernova explosions, the broad Seagull Nebula is cataloged as Sh2-296 and IC 2177. The prominent bluish arc below and right of center is a bow shock from runaway star FN Canis Majoris. This complex of gas and dust clouds with other stars of the Canis Majoris OB1 association spans over 200 light-years at the Seagull Nebula's estimated 3,800 light-year distance.",
    hdurl:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_2194p.jpg',
    media_type: 'image',
    title:'The Seagull Nebula',
    url:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_1097p.jpg',
  );

  group('fromJson', () {
    test(
      'should return a valid model when a valid JSON is parsed',
      () async {
        // Arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('features/movies/movie.json'));
        // Act
        final result = ApodModel.fromJson(jsonMap);
        // Assert
        expect(result, apodModel);
      },
    );
  });

  group('fromDomain', () {
    test(
      'should return a model',
      () async {
        // Arrange

        // Act
        final result = ApodModel.fromDomain(apodEntity);
        // Assert
        expect(result, apodModel);
      },
    );
  });

  group('toDomain', () {
    test(
      'should return an entity',
      () async {
        // Arrange

        // Act
        final result = apodModel.toDomain();
        // Assert
        expect(result, apodEntity);
      },
    );
  });
}
