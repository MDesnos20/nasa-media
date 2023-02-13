import '../../repositories/download_media_repository.dart';

class DisposeDownloadUseCase {
  DisposeDownloadUseCase(this.repository);

  final DownloadMediaRepository repository;
  
  void call() {
    return repository.disposeDownload();
  }
}
