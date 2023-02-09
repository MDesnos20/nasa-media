import '../repositories/download_media_repository.dart';

class InitDownloaderUseCase {
  InitDownloaderUseCase(this.repository);

  final DownloadMediaRepository repository;
  
  Future<bool> call() {
    return repository.initDownloader();
  }
}
