import 'dart:isolate';

abstract class DownloadMediaRepository {
  ReceivePort getReceivePort();
  Future<bool> initDownloader();
  bool getShowContent();
  void disposeDownloadUseCase();
  String getLocalPath();
}
