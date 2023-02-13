import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/download_task_info_entity.dart';
import '../../../domain/usecases/download_file/dispose_download_usecase.dart';
import '../../../domain/usecases/download_file/get_local_path_usecase.dart';
import '../../../domain/usecases/download_file/get_receive_port_usecase.dart';
import '../../../domain/usecases/download_file/init_download_usecase.dart';

part 'download_cubit.freezed.dart';
part 'download_state.dart';

class DownloadCubit extends Cubit<DownloadState> {

  DownloadCubit({
    required this.getLocalPathUseCase,
    required this.initDownloaderUseCase,
    required this.disposeDownloadUseCase,
    required this.getReceiverPortUseCase,
  }) : super(const DownloadState.loading());

  final InitDownloaderUseCase initDownloaderUseCase;
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

  void disposePort() {
    return disposeDownloadUseCase();
  }

  String getLocalPath() {
    return getLocalPathUseCase();
  }
}
