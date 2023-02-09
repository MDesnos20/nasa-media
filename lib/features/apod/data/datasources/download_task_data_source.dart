import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:android_path_provider/android_path_provider.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../domain/entities/download_task_info_entity.dart';

abstract class DownloadTaskDataSource {
  DownloadTaskInfoEntity getDownloadTaskStatus();
  void bindBackgroundIsolate();
  Future<void> prepare();
  bool getShowContent();
  void unbindBackgroundIsolate();
  ReceivePort getReceivePort();
  String getLocalPath();
}

class DownloadTaskDataSourceImpl implements DownloadTaskDataSource {
  late DownloadTaskInfoEntity _task;

  late ReceivePort _port;
  late bool _showContent = false;
  late bool _permissionReady;
  late String _localPath;

  @override
  DownloadTaskInfoEntity getDownloadTaskStatus() {
    return _task;
  }

  @override
  void bindBackgroundIsolate() async {
    _port = ReceivePort('debug test');
    final isSuccess = IsolateNameServer.registerPortWithName(
      _port.sendPort,
      'downloader_send_port',
    );
    if (!isSuccess) {
      unbindBackgroundIsolate();
      bindBackgroundIsolate();
      return ;
    }

    FlutterDownloader.registerCallback(downloadCallback, step: 1);

  }

  @pragma('vm:entry-point')
  static void downloadCallback(
    String id,
    DownloadTaskStatus status,
    int progress,
  ) {
    IsolateNameServer.lookupPortByName('downloader_send_port')
        ?.send([id, status, progress]);
  }

  @override
  ReceivePort getReceivePort() {
    return _port;
  }

  @override
  void unbindBackgroundIsolate() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
  }

  @override
  Future<void> prepare() async {
    final tasks = await FlutterDownloader.loadTasks();

    if (tasks == null) {
      return ;
    }

    _permissionReady = await _checkPermission();
    if (_permissionReady) {
      await _prepareSaveDir();
    }
    _showContent = true;
  }

  @override
  String getLocalPath() {
    return _localPath;
  }

  @override
  bool getShowContent() {
    return _showContent;
  }

  Future<void> _prepareSaveDir() async {
    _localPath = (await _getSavedDir())!;
    final savedDir = Directory(_localPath);
    if (!savedDir.existsSync()) {
      await savedDir.create();
    }
  }

  Future<String?> _getSavedDir() async {
    String? externalStorageDirPath;

    if (Platform.isAndroid) {
      try {
        externalStorageDirPath = await AndroidPathProvider.downloadsPath;
      } catch (err) {
        final directory = await getExternalStorageDirectory();
        externalStorageDirPath = directory?.path;
      }
    } else if (Platform.isIOS) {
      externalStorageDirPath =
          (await getApplicationDocumentsDirectory()).absolute.path;
    }
    return externalStorageDirPath;
  }


  Future<bool> _checkPermission() async {
    if (Platform.isIOS) {
      return true;
    }

    if (Platform.isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      if (info.version.sdkInt > 28) {
        return true;
      }

      final status = await Permission.storage.status;
      if (status == PermissionStatus.granted) {
        return true;
      }

      final result = await Permission.storage.request();
      return result == PermissionStatus.granted;
    }

    throw StateError('unknown platform');
  }
  
}
