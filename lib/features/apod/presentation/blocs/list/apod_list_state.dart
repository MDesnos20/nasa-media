part of 'apod_list_cubit.dart';

@freezed
class ApodListState with _$ApodListState {
  const factory ApodListState.loading() = _Loading;

  const factory ApodListState.error() = _Error;

  const factory ApodListState.loaded({
    required List<ApodEntity> apodMediaList,
  }) = _Loaded;
}
