import 'package:dio/dio.dart';

class DioHelper {
  DioHelper._();

  static Dio createDioInstancecreateDioInstance() {
    final dio = Dio(
      BaseOptions(
        baseUrl:
            'https://mongodb+srv://arone:arone@subdivision.ldsju.mongodb.net/?retryWrites=true&w=majority&appName=Subdivision',
        connectTimeout: Duration(milliseconds: 5000),
        receiveTimeout: Duration(milliseconds: 3000),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add any request interceptors here
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Add any response interceptors here
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          // Add any error interceptors here
          return handler.next(e);
        },
      ),
    );

    return dio;
  }
}
