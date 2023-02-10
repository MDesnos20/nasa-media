import '../../repositories/download_media_repository.dart';

class OpenDownloadedFileUseCase {
  OpenDownloadedFileUseCase(this.repository);

  final DownloadMediaRepository repository;

  Future<bool> call(String taskId) {
    return repository.openDownloadedFile(taskId);
  }
}
