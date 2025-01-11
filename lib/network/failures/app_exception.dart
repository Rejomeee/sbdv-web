import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  // const AppException._();

  const factory AppException.timeoutException() = _TimeoutException;
}
