class CacheException implements Exception {
  const CacheException();
}

class ServerException implements Exception {
  const ServerException();
}

class TimeoutException extends ServerException {
  const TimeoutException();
}

class NotFoundException extends ServerException {
  const NotFoundException();
}

class UnauthorisedException extends ServerException {
  const UnauthorisedException();
}

class BadRequestException extends ServerException {
  const BadRequestException();
}
