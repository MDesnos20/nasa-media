import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:android_path_provider/android_path_provider.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/presentation/widgets/top_bar.dart';
import '../../domain/entities/apod_entity.dart';
import '../../domain/entities/download_task_info_entity.dart';
import '../blocs/download/download_cubit.dart';
import '../widgets/apod_media_widget.dart';
import '../widgets/media_download_widget.dart';


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
  late String _localPath;
  final ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();
    context.read<DownloadCubit>().initDownloader();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> _openDownloadedFile(String taskId) async {
    return FlutterDownloader.open(taskId: taskId);
  }

  Future<void> _requestDownload(String url) async {
    await FlutterDownloader.enqueue(
      url: url,
      headers: {'auth': 'test_for_sql_encoding'},
      savedDir: context.read<DownloadCubit>().getLocalPath(),
      saveInPublicStorage: true,
    );
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
      floatingActionButton: BlocBuilder<DownloadCubit, DownloadState>(
        builder: (context, state) {
          return state.when(
            readyToDownload: () {
              return MediaDownloadWidget(
                hdurl: widget.apodDetailPageArgs.apodDetail.hdurl ?? '',
                downloadMedia: _requestDownload,
                openDownloadedFile: _openDownloadedFile,
                showContent: true,
                taskStatus: task,
              );
            },
            downloaded: () {
              return const SizedBox();
            },
            downloading: (task) {
              return MediaDownloadWidget(
                hdurl: widget.apodDetailPageArgs.apodDetail.hdurl ?? '',
                downloadMedia: _requestDownload,
                openDownloadedFile: _openDownloadedFile,
                showContent: true,
                taskStatus: task,
              );
            },
            error: () {
              return const SizedBox();
            },
            loading: () {
              return const SizedBox();
            },
          );
        },
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
