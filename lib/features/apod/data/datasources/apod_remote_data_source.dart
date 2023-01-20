import 'package:global_configuration/global_configuration.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/data/datasources/remote_data_source.dart';

abstract class ApodRemoteDataSource {
  Future<dynamic> getApodMedia(int count);
}

class ApodRemoteDataSourceImpl extends RemoteDataSource implements ApodRemoteDataSource {
  ApodRemoteDataSourceImpl({required super.dio});

  @override
  Future getApodMedia(int count) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.planetaryApodPath,
      queryParameters: {
        'api_key': GlobalConfiguration().getValue('api_key'),
        'count': count
      },
    );
  }
}
