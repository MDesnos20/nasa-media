import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/apod_entity.dart';
import '../../../domain/usecases/get_apod_media_usecase.dart';

part 'apod_cubit.freezed.dart';
part 'apod_state.dart';

class ApodCubit extends Cubit<ApodState> {
  ApodCubit({required this.apodMediaUseCase}) : super(const ApodState.loading());

  final GetApodMediaUseCase apodMediaUseCase;

  Future<void> getApod(int count) async {
    emit(const ApodState.loading());
    final result = await apodMediaUseCase(GetApodMediaUseCaseParams(count: count));

    result.when(
      success: (apod) {
        emit(ApodState.loaded(apod: apod));
      },
      failure: (failure) {
        emit(const ApodState.error());
      },
    );
  }

  /*Future<void> downloadImage(String hdurl) async {
    final taskId = await FlutterDownloader.enqueue(
      url: 'https://apod.nasa.gov/apod/image/1801/snowpoles_brinkman_960.jpg',
      headers: {}, // optional: header send with url (auth token etc)
      savedDir: 'the path of directory where you want to save downloaded files',
      showNotification:
          true, // show download progress in status bar (for Android)
      openFileFromNotification:
          true, // click on notification to open downloaded file (for Android)
    );
  }*/
}
