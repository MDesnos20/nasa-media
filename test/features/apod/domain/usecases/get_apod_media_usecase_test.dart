import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:socle/core/domain/entities/result.dart';
import 'package:socle/features/apod/domain/entities/apod_entity.dart';
import 'package:socle/features/apod/domain/repositories/apod_repository.dart';
import 'package:socle/features/apod/domain/usecases/get_apod_media_usecase.dart';

import './get_apod_media_usecase_test.mocks.dart';

@GenerateMocks([ApodRepository])
void main() {
  late GetApodMediaUseCase useCase;
  late MockApodRepository mockApodRepository;

  setUp(() {
    mockApodRepository = MockApodRepository();
    useCase = GetApodMediaUseCase(mockApodRepository);
  });

  const expectedResult = [ApodEntity(
    date:'2023-01-19',
    explanation:"A broad expanse of glowing gas and dust presents a bird-like visage to astronomers from planet Earth, suggesting its popular moniker - The Seagull Nebula. Using narrowband image data, this 3-panel mosaic of the cosmic bird covers a 2.5 degree swath across the plane of the Milky Way, near the direction of Sirius, alpha star of the constellation Canis Major. Likely part of a larger shell structure swept up by successive supernova explosions, the broad Seagull Nebula is cataloged as Sh2-296 and IC 2177. The prominent bluish arc below and right of center is a bow shock from runaway star FN Canis Majoris. This complex of gas and dust clouds with other stars of the Canis Majoris OB1 association spans over 200 light-years at the Seagull Nebula's estimated 3,800 light-year distance.",
    hdurl:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_2194p.jpg',
    mediaType: 'image',
    title:'The Seagull Nebula',
    url:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_1097p.jpg',
  )];

  const params = GetApodMediaUseCaseParams(
    count: 15,
  );

  test(
    'should get single movie from repository on success',
    () async {
      // Arrange
      when(
        mockApodRepository.getApodMedia(any),
      ).thenAnswer((_) async => const Result<List<ApodEntity>>.success(expectedResult));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Result<List<ApodEntity>>.success(expectedResult));
      verify(mockApodRepository.getApodMedia(params.count));
      verifyNoMoreInteractions(mockApodRepository);
    },
  );
}
