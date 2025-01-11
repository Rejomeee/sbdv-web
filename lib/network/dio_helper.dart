import 'package:dio/dio.dart';

import 'error_interceptor.dart';

class DioHelper {
  DioHelper._();

  static Dio createDioInstancecreateDioInstance() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:5002',
        connectTimeout: Duration(milliseconds: 5000),
        receiveTimeout: Duration(milliseconds: 3000),
      ),
    );

    dio.interceptors.add(ErrorInterceptor(dio));

    return dio;
  }
}
