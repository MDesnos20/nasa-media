import 'dart:isolate';

import '../repositories/download_media_repository.dart';

class GetReceiverPortUseCase {
  GetReceiverPortUseCase(this.repository);

  final DownloadMediaRepository repository;
  
  ReceivePort call() {
    return repository.getReceivePort();
  }
}
