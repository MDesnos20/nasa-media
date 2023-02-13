import '../../repositories/download_media_repository.dart';

class GetLocalPathUseCase {
  GetLocalPathUseCase(this.repository);

  final DownloadMediaRepository repository;
  
  String call() {
    return repository.getLocalPath();
  }
}
