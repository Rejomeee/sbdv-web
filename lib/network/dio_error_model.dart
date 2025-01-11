// coverage:ignore-file
import 'dart:convert';

import 'package:dio/dio.dart';

const _nullResponse = 'Response is null';

class DioErrorModel {
  final ErrorInterceptorHandler handler;
  final DioException exception;

  DioErrorModel(
    this.handler,
    this.exception,
  );

  Response<dynamic>? get response => exception.response;

  Object? get error => exception.error;

  RequestOptions get requestOptions => exception.requestOptions;

  DioExceptionType get type => exception.type;

  String get strErr => error.toString();

  dynamic get data => response?.data;

  int? get statusCode => response?.statusCode;

  bool get hasResponseData => data != null && response != null;

  String? get message => exception.message;

  Map<String, dynamic> get jsonResponse =>
      data is String ? jsonDecode(data as String) as Map<String, dynamic> : data as Map<String, dynamic>;

  String get errorString => strErr.isEmpty ? _nullResponse : strErr;

  bool get hasRetriedForSessionTimeout => requestOptions.extra['hasRetriedForSessionTimeout'] != true;

  bool get hasRetriedForUnauthorized => requestOptions.extra['hasRetriedForUnauthorized'] != true;
}
