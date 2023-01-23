import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:socle/core/constants/api_constants.dart';
import 'package:socle/features/apod/data/datasources/apod_remote_data_source.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset('app_settings');

  late Dio dio;
  late DioAdapter adapter;
  late ApodRemoteDataSource datasource;

  setUp(() {
    dio = Dio();
    adapter = DioAdapter(dio: dio);
    datasource = ApodRemoteDataSourceImpl(dio: dio);
  });

  group('getMovies', () {
    final resultsJson = json.decode(fixture('features/movies/movies.json'));

    const count = 15;

    test('Should get apod list', () async {
      // arrange
      final route = GlobalConfiguration().getValue('api_base_url') + ApiConstants.planetaryApodPath;
      adapter.onGet(
        route,
        queryParameters: {
          'api_key': GlobalConfiguration().getValue('api_key'),
          'count': count,
        },
            (request) => request.reply(200, resultsJson),
      );

      // act
      final result = await datasource.getApodMedia(count);

      // assert
      expect(result, resultsJson);
    });
  });
}
