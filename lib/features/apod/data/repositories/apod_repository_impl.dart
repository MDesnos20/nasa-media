import 'dart:async';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/apod_entity.dart';
import '../../domain/repositories/apod_repository.dart';
import '../datasources/apod_remote_data_source.dart';
import '../models/apod_model.dart';

class ApodRepositoryImpl implements ApodRepository {
  ApodRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  final ApodRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Result<List<ApodEntity>>> getApodMedia(int count) async {
    if (!(await networkInfo.isConnected)) {
      return const Result.failure(Failure.offline());
    }

    try {
      final result = await remoteDataSource.getApodMedia(count);
      final apodMediaList = getApodMediaList(result);
      return Result.success(apodMediaList); // TODO créer la liste
    } on ServerException {
      return const Result.failure(Failure.server());
    }
  }

}
