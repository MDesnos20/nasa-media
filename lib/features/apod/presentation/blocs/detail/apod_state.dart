part of 'apod_cubit.dart';

@freezed
class ApodState with _$ApodState {
  const factory ApodState.loading() = _Loading;

  const factory ApodState.error() = _Error;

  const factory ApodState.loaded({
    required List<ApodEntity> apod,
  }) = _Loaded;
}
