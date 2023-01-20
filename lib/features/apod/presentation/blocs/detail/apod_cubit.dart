import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/apod_entity.dart';
import '../../../domain/usecases/get_apod_media_usecase.dart';

part 'apod_cubit.freezed.dart';
part 'apod_state.dart';

class ApodCubit extends Cubit<ApodState> {
  ApodCubit({required this.apodMediaUseCase}) : super(ApodState.loading());

  final GetApodMediaUseCase apodMediaUseCase;

  Future<void> getApod(int count) async {
    emit(ApodState.loading());
    final result = await apodMediaUseCase(GetApodMediaUseCaseParams(count: count));

    result.when(
      success: (apod) {
        emit(ApodState.loaded(apod: apod));
      },
      failure: (failure) {
        emit(ApodState.error());
      },
    );
  }
}
