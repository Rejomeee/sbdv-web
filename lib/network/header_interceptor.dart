// coverage:ignore-file
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'http_constants.dart';

class HeaderInterceptor extends Interceptor {
  final _storage = const FlutterSecureStorage();
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(
      <String, String>{
        Header.contentType: MediaType.json,
        Header.authorization: 'Bearer ${await _storage.read(key: 'auth_token')}'
      },
    );
    return super.onRequest(options, handler);
  }
}
