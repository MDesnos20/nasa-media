import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/download_task_info_entity.dart';
import '../../../domain/usecases/dispose_download_usecase.dart';
import '../../../domain/usecases/get_download_ready_usecase.dart';
import '../../../domain/usecases/get_local_path_usecase.dart';
import '../../../domain/usecases/get_receive_port_usecase.dart';
import '../../../domain/usecases/init_download_usecase.dart';

part 'download_cubit.freezed.dart';
part 'download_state.dart';

class DownloadCubit extends Cubit<DownloadState> {

  DownloadCubit({
    required this.getLocalPathUseCase,
    required this.initDownloaderUseCase,
    required this.getDownloadReadyUseCase,
    required this.disposeDownloadUseCase,
    required this.getReceiverPortUseCase,
  }) : super(const DownloadState.loading());

  final InitDownloaderUseCase initDownloaderUseCase;
  final GetDownloadReadyUseCase getDownloadReadyUseCase;
  final DisposeDownloadUseCase disposeDownloadUseCase;
  final GetReceiverPortUseCase getReceiverPortUseCase;
  final GetLocalPathUseCase getLocalPathUseCase;

  Future<void> initDownloader() async {
    final result = await initDownloaderUseCase();
    if (result) {
      initListening();
      emit(const DownloadState.readyToDownload());
    } else {
      emit(const DownloadState.error());
    }
  }

  void initListening() {
    getReceiverPortUseCase()
      .listen((dynamic data) {
        final taskId = (data as List<dynamic>)[0] as String;
        final status = data[1] as DownloadTaskStatus;
        final progress = data[2] as int;
        emit(DownloadState.downloading(DownloadTaskInfoEntity(progress: progress, status: status, taskId: taskId)));
      });
  }

  bool getShowContent() {
    return getDownloadReadyUseCase();
  }

  void disposePort() {
    return disposeDownloadUseCase();
  }

  String getLocalPath() {
    return getLocalPathUseCase();
  }
}
