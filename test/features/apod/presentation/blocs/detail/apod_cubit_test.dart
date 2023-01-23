import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:socle/core/domain/entities/result.dart';
import 'package:socle/core/error/failures.dart';
import 'package:socle/features/apod/domain/entities/apod_entity.dart';
import 'package:socle/features/apod/domain/usecases/get_apod_media_usecase.dart';
import 'package:socle/features/apod/presentation/blocs/detail/apod_cubit.dart';

import 'apod_cubit_test.mocks.dart';

@GenerateMocks([GetApodMediaUseCase])
void main() {
  late MockGetApodMediaUseCase getApodMediaUseCase;


  const expectedResult = [ApodEntity(
    date:'2023-01-19',
    explanation:"A broad expanse of glowing gas and dust presents a bird-like visage to astronomers from planet Earth, suggesting its popular moniker - The Seagull Nebula. Using narrowband image data, this 3-panel mosaic of the cosmic bird covers a 2.5 degree swath across the plane of the Milky Way, near the direction of Sirius, alpha star of the constellation Canis Major. Likely part of a larger shell structure swept up by successive supernova explosions, the broad Seagull Nebula is cataloged as Sh2-296 and IC 2177. The prominent bluish arc below and right of center is a bow shock from runaway star FN Canis Majoris. This complex of gas and dust clouds with other stars of the Canis Majoris OB1 association spans over 200 light-years at the Seagull Nebula's estimated 3,800 light-year distance.",
    hdurl:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_2194p.jpg',
    media_type: 'image',
    title:'The Seagull Nebula',
    url:'https://apod.nasa.gov/apod/image/2301/crtastro_0172_1097p.jpg',
  )];

  const count = 15;

  setUp(() {
    getApodMediaUseCase = MockGetApodMediaUseCase();
  });

  test('loading state should be MovieState.loading()', () {
    final cubit = ApodCubit(
      apodMediaUseCase: getApodMediaUseCase,
    );
    // Assert
    expect(cubit.state, equals(const ApodState.loading()));
  });

  test(
    'should call getMovieById use case when getMovie() is called',
    () async {
      final cubit = ApodCubit(
        apodMediaUseCase: getApodMediaUseCase,
      );
      // Arrange
      when(getApodMediaUseCase(any)).thenAnswer((_) async => const Result.success(expectedResult));
      // Act
      cubit.getApod(count);
      // Assert
      verify(getApodMediaUseCase.call(any));
    },
  );

  blocTest<ApodCubit, ApodState>(
    'should emit [loading, loaded] when getMovie() is a success',
    build: () => ApodCubit(
      apodMediaUseCase: getApodMediaUseCase,
    ),
    setUp: () {
      when(getApodMediaUseCase(any)).thenAnswer((_) async => const Result.success(expectedResult));
    },
    act: (cubit) => cubit.getApod(count),
    expect: () => const [
      ApodState.loading(),
      ApodState.loaded(apod: expectedResult),
    ],
  );

  blocTest<ApodCubit, ApodState>(
    'should emit [loading, error] when user is offline',
    build: () => ApodCubit(
      apodMediaUseCase: getApodMediaUseCase,
    ),
    setUp: () {
      when(getApodMediaUseCase(any)).thenAnswer((_) async => const Result.failure(Failure.offline()));
    },
    act: (cubit) => cubit.getApod(count),
    expect: () => [
      const ApodState.loading(),
      const ApodState.error(),
    ],
  );
}
