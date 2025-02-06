import 'package:dio/dio.dart';

import '../util/contants.dart';
import 'error_interceptor.dart';
import 'header_interceptor.dart';

class DioHelper {
  DioHelper._();

  static Dio createDioInstancecreateDioInstance() {
    final dio = Dio(
      BaseOptions(
        baseUrl: const String.fromEnvironment(Constants.baseUrl),
        connectTimeout: Duration(milliseconds: 5000),
        receiveTimeout: Duration(milliseconds: 3000),
      ),
    );

    dio.interceptors.add(HeaderInterceptor());
    dio.interceptors.add(ErrorInterceptor());

    return dio;
  }
}
