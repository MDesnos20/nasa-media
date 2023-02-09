import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import '../../../../di/injection_container.dart';
import '../../domain/entities/apod_entity.dart';
import '../../domain/entities/download_task_info_entity.dart';
import '../blocs/download/download_cubit.dart';
import '../widgets/apod_media_widget.dart';
import '../widgets/media_download_widget.dart';
import '../../../../core/presentation/widgets/custom_top_bar_widget.dart';


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

  @override
  void initState() {
    super.initState();
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

  void _disposePort() {
    BlocProvider.of<DownloadCubit>(context).disposePort();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<DownloadCubit>(),
      child: Scaffold(
        appBar: CustomTopBar(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          customAction: _disposePort,
          title: widget.apodDetailPageArgs.apodDetail.title,
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
                  taskStatus: const DownloadTaskInfoEntity(progress: 0, status: DownloadTaskStatus.undefined, taskId: ''),
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
                context.read<DownloadCubit>().initDownloader();
                return const SizedBox();
              },
            );
          },
        ),
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
