import 'dart:developer';

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
    print('$hdurl, $showContent');
    if (hdurl != '' && showContent == true) {
      if (taskStatus.status == DownloadTaskStatus.undefined) {
        return FloatingActionButton(
          backgroundColor: Color(0xFF0B3D91),
          foregroundColor: Colors.white,
          onPressed: () => downloadMedia(
              this.hdurl,),
          child: Icon(Icons.download),
          tooltip: 'Download',
        );
      } else if (taskStatus.status == DownloadTaskStatus.running) {
        return FloatingActionButton(
          backgroundColor: Color(0xFF0B3D91),
          foregroundColor: Colors.white,
          onPressed: () => {},
          child: Center(child: Text('${taskStatus.progress} %')),
          tooltip: 'Running',
        );
      } else if (taskStatus.status == DownloadTaskStatus.complete) {
        return FloatingActionButton(
          backgroundColor: Color(0xFF0B3D91),
          foregroundColor: Colors.white,
          onPressed: () async {
            final success = await openDownloadedFile(taskStatus.taskId);
            if (!success) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Cannot open this file'),
                ),
              );
            }
          },
          child: Icon(Icons.download_done),
          tooltip: 'Complete',
        );
      } else {
        return SizedBox();
      }
    } else {
      return SizedBox();
    }

  }
}
