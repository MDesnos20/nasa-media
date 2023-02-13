import '../../repositories/download_media_repository.dart';

class RequestDownloadUseCase {
  RequestDownloadUseCase(this.repository);

  final DownloadMediaRepository repository;

  void call(String hdurl) {
    return repository.requestDownload(hdurl);
  }
}
