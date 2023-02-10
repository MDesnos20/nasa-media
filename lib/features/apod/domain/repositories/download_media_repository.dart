import 'dart:isolate';

abstract class DownloadMediaRepository {
  ReceivePort getReceivePort();
  Future<bool> initDownloader();
  bool getShowContent();
  void disposeDownload();
  void requestDownload(String url);
  String getLocalPath();
  Future<bool> openDownloadedFile(String taskId);
}
