import 'package:global_configuration/global_configuration.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/data/datasources/remote_data_source.dart';

abstract class MovieRemoteDataSource {
  Future<dynamic> getMoviesByPage(int page, String locale);

  Future<dynamic> getMovieById(int id, String locale);
}

class MovieRemoteDataSourceImpl extends RemoteDataSource implements MovieRemoteDataSource {
  MovieRemoteDataSourceImpl({required super.dio});

  @override
  Future getMovieById(int id, String locale) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.moviePath(id),
      queryParameters: {
        'api_key': GlobalConfiguration().getValue('api_key'),
        'language': locale,
      },
    );
  }

  @override
  Future getMoviesByPage(int page, String locale) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.popularMoviesPath,
      queryParameters: {
        'api_key': GlobalConfiguration().getValue('api_key'),
        'language': locale,
        'page': page,
      },
    );
  }
}
