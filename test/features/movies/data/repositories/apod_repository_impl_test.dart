import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:socle/core/domain/entities/result.dart';
import 'package:socle/core/error/exceptions.dart';
import 'package:socle/core/error/failures.dart';
import 'package:socle/core/network/network_info.dart';
import 'package:socle/features/apod/data/datasources/apod_remote_data_source.dart';
import 'package:socle/features/apod/data/models/apod_model.dart';
import 'package:socle/features/apod/data/repositories/apod_repository_impl.dart';
import 'package:socle/features/apod/domain/entities/apod_entity.dart';

import './movies_repository_impl_test.mocks.dart';
import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([ApodRemoteDataSource, NetworkInfo])
void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset('app_settings');

  late ApodRepositoryImpl repository;
  late MockApodRemoteDataSource remoteDataSource;
  late MockNetworkInfo networkInfo;

  setUp(() {
    remoteDataSource = MockApodRemoteDataSource();
    networkInfo = MockNetworkInfo();
    repository = ApodRepositoryImpl(
      remoteDataSource: remoteDataSource,
      networkInfo: networkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group('getMovieById', () {
    final expectedResult = const ApodModel(
    date:'2023-01-19',
    explanation:"A broad expanse of glowing gas and dust presents a bird-like visage to astronomers from planet Earth, suggesting its popular moniker - The Seagull Nebula. Using narrowband image data, this 3-panel mosaic of the cosmic bird covers a 2.5 degree swath across the plane of the Milky Way, near the direction of Sirius, alpha star of the constellation Canis Major. Likely part of a larger shell structure swept up by successive supernova explosions, the broad Seagull Nebula is cataloged as Sh2-296 and IC 2177. The prominent bluish arc below and right of center is a bow shock from runaway star FN Canis Majoris. This complex of gas and dust clouds with other stars of the Canis Majoris OB1 association spans over 200 light-years at the Seagull Nebula's estimated 3,800 light-year distance.",
    hdurl:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_2194p.jpg',
    media_type: 'image',
    title:'The Seagull Nebula',
    url:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_1097p.jpg',
  ).toDomain();

    const count = 15;

    runTestsOnline(() {
      final jsonData = json.decode(fixture('features/movies/movie.json'));

      setUp(() {
        when(
          remoteDataSource.getApodMedia(any),
        ).thenAnswer((_) async => jsonData);
      });

      test('should return movie on success', () async {
        // Arrange
        // Act
        final result = await repository.getApodMedia(count);
        // Assert
        verify(
          remoteDataSource.getApodMedia(count),
        );
        expect(result, equals(Result<ApodEntity>.success(expectedResult)));
      });
      test('should return a failure on exception', () async {
        // Arrange
        when(
          remoteDataSource.getApodMedia(any),
        ).thenThrow(const ServerException());
        // Act
        final result = await repository.getApodMedia(count);
        // Assert
        verify(
          remoteDataSource.getApodMedia(count),
        );
        expect(result, equals(const Result<ApodEntity>.failure(Failure.server())));
      });
    });

    runTestsOffline(() {
      test(
        'should return a offline failure when device is offline',
            () async {
          // Arrange
          // Act
          final result = await repository.getApodMedia(count);
          // Assert
          verifyZeroInteractions(remoteDataSource);
          verify(networkInfo.isConnected);
          expect(result, equals(const Result<ApodEntity>.failure(Failure.offline())));
        },
      );
    });
  });
}
