import 'dart:isolate';

import '../../domain/repositories/download_media_repository.dart';
import '../datasources/download_task_data_source.dart';

class DownloadMediaRepositoryImpl implements DownloadMediaRepository {

  DownloadMediaRepositoryImpl({
    required this.localDataSource,
  });
  final DownloadTaskDataSource localDataSource;

  @override
  Future<bool> initDownloader() async {
    localDataSource.bindBackgroundIsolate();
    await localDataSource.prepare();
    return localDataSource.getShowContent();
  }

  @override
  String getLocalPath() {
    return localDataSource.getLocalPath();
  }

  @override
  ReceivePort getReceivePort() {
    return localDataSource.getReceivePort();
  }

  @override
  bool getShowContent() {
    return localDataSource.getShowContent();
  }
  
  @override
  void disposeDownload() {
    return localDataSource.unbindBackgroundIsolate();
  }

  @override
  void requestDownload(String hdurl) {
    return localDataSource.requestDownload(hdurl);
  }

  @override
  Future<bool> openDownloadedFile(String taskId) {
    return localDataSource.openDownloadedFile(taskId);
  }

}
