import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import '../../domain/entities/download_task_info_entity.dart';

class MediaDownloadWidget extends StatelessWidget {
  
  const MediaDownloadWidget({
    required this.downloadMedia,
    required this.hdurl,
    required this.taskStatus,
    required this.showContent,
    required this.openDownloadedFile,
    super.key,
  });

  final Future<void> Function(String url) downloadMedia;
  final Future<bool> Function(String taskId) openDownloadedFile;

  final String hdurl;
  final bool showContent;
  final DownloadTaskInfoEntity taskStatus;


  @override
  Widget build(BuildContext context) {
    if (hdurl != '' && showContent == true) {
      if (taskStatus.status == DownloadTaskStatus.undefined) {
        return FloatingActionButton(
          backgroundColor: const Color(0xFF0B3D91),
          foregroundColor: Colors.white,
          onPressed: () => downloadMedia(
              hdurl,),
          tooltip: 'Download',
          child: const Icon(Icons.download),
        );
      } else if (taskStatus.status == DownloadTaskStatus.running) {
        return FloatingActionButton(
          backgroundColor: const Color(0xFF0B3D91),
          foregroundColor: Colors.white,
          onPressed: () => {},
          tooltip: 'Running',
          child: Center(child: Text('${taskStatus.progress} %')),
        );
      } else if (taskStatus.status == DownloadTaskStatus.complete) {
        return FloatingActionButton(
          backgroundColor: const Color(0xFF0B3D91),
          foregroundColor: Colors.white,
          onPressed: () async {
            final success = await openDownloadedFile(taskStatus.taskId);
            if (!success) {
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cannot open this file'),
                ),
              );
            }
          },
          tooltip: 'Complete',
          child: const Icon(Icons.download_done),

        );
      } else {
        return const SizedBox();
      }
    } else {
      return const SizedBox();
    }

  }
}
