import '../repositories/download_media_repository.dart';

class GetDownloadReadyUseCase {
  GetDownloadReadyUseCase(this.repository);

  final DownloadMediaRepository repository;
  
  bool call() {
    return repository.getShowContent();
  }
}
