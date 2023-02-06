import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/apod_entity.dart';
import '../../../domain/usecases/get_apod_media_usecase.dart';

part 'apod_list_cubit.freezed.dart';
part 'apod_list_state.dart';

class ApodListCubit extends Cubit<ApodListState> {
  ApodListCubit({required this.apodMedia}) : super(const ApodListState.loading());

  final GetApodMediaUseCase apodMedia;
  List<ApodEntity> apodMediaList = [];
  bool isFetching = false;

  final int _count = 18;

  Future<void> getApodMedia(bool firstTime) async {
    if (firstTime == true) {
      emit(const ApodListState.loading());
      if (apodMediaList.isEmpty == false) {
        emit(ApodListState.loaded(apodMediaList: apodMediaList));
      }
    }

    final result = await apodMedia(GetApodMediaUseCaseParams(count: _count));
    isFetching = true;
    result.when(
      success: (apodMediaList) {
        this.apodMediaList = [...this.apodMediaList, ...apodMediaList];
        emit(ApodListState.loaded(apodMediaList: this.apodMediaList));
        isFetching = false;
      },
      failure: (failure) {
        emit(const ApodListState.error());
      },
    );
  }
}
