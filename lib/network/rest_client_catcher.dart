// coverage:ignore-file
import 'package:dio/dio.dart';
import 'package:sbdv_web/network/result.dart';

import 'failures/app_failure.dart';
import 'failures/network_failure.dart';
import 'failures/sdk_failure.dart';

///Callback to initiate the [Dio]-related tasks that expects a [Result] with generics
typedef OnRequestCallback<T> = Future<Result<T>> Function();

class RestClientCatcher {
  const RestClientCatcher._();

  ///Function that lets you safely call a backend function.
  ///
  ///Use [onRequest] to make your network call returning the successful [Result] inside the blo
  ///and catches any possible [DioException]s and [Exception]s and returns their processed failure classes through
  static Future<Result<T>> request<T>({
    required OnRequestCallback<T> onRequest,
  }) async {
    try {
      return await onRequest();
//       throw ApiErrorDto.fromJson(jsonDecode('''
// {
//             "header": "Let's try something else.",
//             "message": "You’ve reached your Pay in 4 credit limit! Please choose another payment option.",
//             "retryable": true,
//             "retryLabel": "Select a different method.",
//             "closable": true,
//             "closeLabel": "Got it!",
//             "primaryButton": "RETRY"
//     }''') as Map<String, dynamic>);
    } on DioException catch (dioError) {
      /*
        * Note:
        Base on investigation if API DioException occurred, 
        it will first go through the following before proceeding below: 
          - crashlytics_monitoring_logger
          - error_interceptor
      */
      if (dioError.error is NetworkFailure) {
        final networkFailure = dioError.error as NetworkFailure;
        return Result.failure(AppFailure.networkFailure(networkFailure));
      } else if (dioError.error is SdkFailure) {
        final sdkFailure = dioError.error as SdkFailure;
        return Result.failure(AppFailure.sdkFailure(sdkFailure));
      } else {
        if (dioError.type == DioExceptionType.connectionTimeout) {
          return Result.failure(AppFailure.sdkFailure(SdkFailure.connectionTimeout(message: dioError.message)));
        }
        final failure = SdkFailure.generic(
          Exception("Strings.dioParsingFailed"),
        );
        return Result.failure(AppFailure.sdkFailure(failure));
      }
    } on Exception catch (e, s) {
      final failure = SdkFailure.runtimeError(
        exception: e,
        stacktrace: s,
      );
      return Result.failure(AppFailure.sdkFailure(failure));
    } on Error catch (e, s) {
      final failure = SdkFailure.runtimeError(
        exception: Exception(e.toString()),
        stacktrace: s,
      );
      return Result.failure(AppFailure.sdkFailure(failure));
    }
  }
}
