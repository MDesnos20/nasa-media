import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_task_info_entity.freezed.dart';

@freezed
class DownloadTaskInfoEntity with _$DownloadTaskInfoEntity {
  const factory DownloadTaskInfoEntity({
    required int progress,
    required DownloadTaskStatus status,
    required String taskId,
  }) = _DownloadTaskInfoEntity;
}
