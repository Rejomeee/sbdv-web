// coverage:ignore-file
import 'package:freezed_annotation/freezed_annotation.dart';

import 'failures/app_failure.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  Result._();

  factory Result.success(T result) = Success<T>;

  factory Result.failure(AppFailure failure) = Failure<T>;
}

extension HelperFunctions on Result {
  AppFailure? get failure => when(
        success: (dynamic _) => null,
        failure: (failure) => failure,
      );
}
