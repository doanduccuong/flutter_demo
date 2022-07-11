import 'package:dio/dio.dart';
import 'package:flutter_doan_duc_cuong/rest_api/rest_client.dart';

const TIME_OUT = 30 * 1000;

class AppApi {
  final String basePath = "https://api.themoviedb.org/3/discover/";
  final Dio _dio = Dio();
  final Duration timeout;

  AppApi({
    List<Interceptor> interceptors = const [],
    this.timeout = const Duration(seconds: 30),
  }) {
    _dio.options.baseUrl = basePath;
    _dio.options.connectTimeout = TIME_OUT;
    _dio.options.receiveTimeout = TIME_OUT;
  }
  AppRestClient getMovieRestClient({Dio? dio}) {
    dio ??= _dio;
    return AppRestClient(dio);
  }

}
