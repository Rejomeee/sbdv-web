// coverage:ignore-file
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/di/injection.dart';

import 'http_constants.dart';

class HeaderInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(
      <String, String>{
        Header.contentType: MediaType.json,
        Header.authorization: 'Bearer ${await serviceLocator<FlutterSecureStorage>().read(key: 'auth_token')}'
      },
    );
    return super.onRequest(options, handler);
  }
}
