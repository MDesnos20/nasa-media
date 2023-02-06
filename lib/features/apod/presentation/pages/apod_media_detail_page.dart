import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:android_path_provider/android_path_provider.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/presentation/widgets/top_bar.dart';
import '../../domain/entities/apod_entity.dart';
import '../widgets/apod_media_widget.dart';
import '../widgets/media_download_widget.dart';
import '../../domain/entities/download_task_info_entity.dart';


class ApodMediaDetailPage extends StatefulWidget {
  const ApodMediaDetailPage({
    required this.apodDetailPageArgs,
    super.key,
  });

  final ApodDetailPageArgs apodDetailPageArgs;

  @override
  State<ApodMediaDetailPage> createState() => ApodMediaDetailPageState();
}

class ApodMediaDetailPageState extends State<ApodMediaDetailPage> {
  DownloadTaskInfoEntity task = DownloadTaskInfoEntity(progress: 0, status: DownloadTaskStatus.undefined, taskId: '');
  late bool _showContent;
  late bool _permissionReady;
  late bool _saveInPublicStorage;
  late String _localPath;
  final ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();

    _bindBackgroundIsolate();

    FlutterDownloader.registerCallback(downloadCallback, step: 1);

    _showContent = false;
    _permissionReady = false;
    _saveInPublicStorage = false;
    print("initState");
    _prepare();


  }

  void _bindBackgroundIsolate() {
    print('_bindBackgroundIsolate');

    final isSuccess = IsolateNameServer.registerPortWithName(
      _port.sendPort,
      'downloader_send_port',
    );
    print('isSuccess');
    if (!isSuccess) {
      _unbindBackgroundIsolate();
      _bindBackgroundIsolate();
      return;
    }

    _port.listen((dynamic data) {
      final taskId = (data as List<dynamic>)[0] as String;
      final status = data[1] as DownloadTaskStatus;
      final progress = data[2] as int;

      print(
        'Callback on UI isolate: '
        'task ($taskId) is in status ($status) and process ($progress)',
      );

      setState(() {
        task = DownloadTaskInfoEntity(progress: progress, status: status, taskId: taskId); 
      });
    });
  }

   Future<void> _requestDownload(String url) async {
    await FlutterDownloader.enqueue(
      url: url,
      headers: {'auth': 'test_for_sql_encoding'},
      savedDir: _localPath,
      saveInPublicStorage: _saveInPublicStorage,
    );
  }

  @pragma('vm:entry-point')
  static void downloadCallback(
    String id,
    DownloadTaskStatus status,
    int progress,
  ) {
    print(
      'Callback on background isolate: '
      'task ($id) is in status ($status) and process ($progress)',
    );

    IsolateNameServer.lookupPortByName('downloader_send_port')
        ?.send([id, status, progress]);
  }

  void _unbindBackgroundIsolate() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
  }

  Future<void> _prepare() async {
    final tasks = await FlutterDownloader.loadTasks();

    if (tasks == null) {
      print('No tasks were retrieved from the database.');
      return;
    }

    _permissionReady = await _checkPermission();
    if (_permissionReady) {
      await _prepareSaveDir();
    }

    setState(() {
      print('showcontent $_showContent');
      _showContent = true;
    });
  }

  Future<bool> _openDownloadedFile(String taskId) async {
    return FlutterDownloader.open(taskId: taskId);
  }

  Future<String?> _getSavedDir() async {
    String? externalStorageDirPath;

    if (Platform.isAndroid) {
      try {
        externalStorageDirPath = await AndroidPathProvider.downloadsPath;
      } catch (err, st) {
        print('failed to get downloads path: $err, $st');

        final directory = await getExternalStorageDirectory();
        externalStorageDirPath = directory?.path;
      }
    } else if (Platform.isIOS) {
      externalStorageDirPath =
          (await getApplicationDocumentsDirectory()).absolute.path;
    }
    return externalStorageDirPath;
  }
  
  Future<void> _prepareSaveDir() async {
    _localPath = (await _getSavedDir())!;
    final savedDir = Directory(_localPath);
    if (!savedDir.existsSync()) {
      await savedDir.create();
    }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: Text(widget.apodDetailPageArgs.apodDetail.title),
      ),
      body: ApodWidget(
        media: widget.apodDetailPageArgs.apodDetail,
      ),
      floatingActionButton: 
        MediaDownloadWidget(
          hdurl: widget.apodDetailPageArgs.apodDetail.hdurl ?? '',
          downloadMedia: _requestDownload,
          openDownloadedFile: _openDownloadedFile,
          showContent: _showContent,
          taskStatus: task,
        ),
    );
  }

}

class ApodDetailPageArgs {
  const ApodDetailPageArgs({
    required this.apodDetail,
  });

  final ApodEntity apodDetail;
}
