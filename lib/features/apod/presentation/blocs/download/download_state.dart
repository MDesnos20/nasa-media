part of 'download_cubit.dart';

@freezed
class DownloadState with _$DownloadState {
  
  const factory DownloadState.downloading(DownloadTaskInfoEntity task) = _Downloading;

  const factory DownloadState.error() = _Error;

  const factory DownloadState.readyToDownload() = _ReadyToDownload;

  const factory DownloadState.downloaded() = _Downloaded;

  const factory DownloadState.loading() = _Loading;

}
