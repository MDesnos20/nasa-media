import 'dart:async';

import 'package:dio/dio.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../error/exceptions.dart';

abstract class RemoteDataSource {
  late final String _baseUrl;

  RemoteDataSource({
    required this.dio,
    String? baseUrl,
  }) {
    _baseUrl = baseUrl ?? GlobalConfiguration().getValue('api_base_url');

    _initDioClient();
  }

  final Dio dio;

  int get millisecondsTimeoutWs => const Duration(seconds: 10).inMilliseconds;

  void _initDioClient() {
    dio.interceptors.clear();

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options
            ..validateStatus = (status) {
              return status! < 400;
            }
            ..connectTimeout = millisecondsTimeoutWs
            ..receiveTimeout = millisecondsTimeoutWs;

          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) async {
          handler.next(error);
        },
      ),
    );
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<T> performDeleteRequestApi<T>({
    required String apiEndpoint,
    String? token,
  }) async {
    Future<Response<T>> request() => dio.delete<T>(
          _path(apiEndpoint),
          options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPostRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
    String? token,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) {
    Options localOptions = options ?? Options();
    if (token != null) {
      final headers = localOptions.headers;
      localOptions = localOptions.copyWith(
        headers: {
          if (headers != null) ...headers,
          'Authorization': 'Bearer $token',
        },
      );
    }
    Future<Response<T>> request() async => dio.post<T>(
          _path(apiEndpoint),
          data: data,
          options: localOptions,
          queryParameters: _queryParameters(queryParameters),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPatchRequestApi<T>({
    required String apiEndpoint,
    String? body,
    String? token,
  }) async {
    Future<Response<T>> request() => dio.patch<T>(
          _path(apiEndpoint),
          data: body,
          options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPutRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
    String? token,
  }) {
    Future<Response<T>> request() => dio.put<T>(
          _path(apiEndpoint),
          data: data,
          options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performGetRequestApi<T>({
    required String apiEndpoint,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    Future<Response<T>> request() async {
      return dio.get<T>(
        _path(apiEndpoint),
        queryParameters: _queryParameters(queryParameters),
        options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
      );
    }

    return _performRequestApi(request);
  }

  Future<void> performDownloadRequestApi({
    required String apiEndpoint,
    dynamic savePath,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    Future<Response> request() async {
      return dio.download(
        _path(apiEndpoint),
        savePath,
        queryParameters: _queryParameters(queryParameters),
        options: (token != null) ? Options(headers: {'Authorization': 'Bearer $token'}) : Options(),
      );
    }

    return _performRequestApi(request);
  }

  Future<T> _performRequestApi<T>(
    Future<Response<T>> Function() request,
  ) async {
    try {
      final Response<T> response = await request();
      return response.data!;
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        throw const TimeoutException();
      }
      if (e.response?.statusCode == 401) {
        throw const UnauthorisedException();
      } else if (e.response?.statusCode == 404) {
        throw const NotFoundException();
      } else if (e.response?.statusCode == 400) {
        throw const BadRequestException();
      } else if (e.response?.statusCode == 504) {
        throw const TimeoutException();
      }
      throw const ServerException();
    }
  }

  Map<String, dynamic> _queryParameters(
    Map<String, dynamic>? requestQueryParameters,
  ) {
    final Map<String, dynamic> apiQueryParameters = {};
    if (requestQueryParameters != null) {
      apiQueryParameters.addAll(requestQueryParameters);
    }
    return apiQueryParameters;
  }

  String _path(String endpoint) {
    return '$_baseUrl$endpoint';
  }
}
