// coverage:ignore-file
import 'package:dio/dio.dart';
import 'dio_error_model.dart';
import 'error_response.dart';
import 'failures/network_failure.dart';
import 'failures/sdk_failure.dart';
import 'json_keys.dart';

/// fix internet connection error sessionTimeout
/// or remove api calls on sending messages

class ErrorInterceptor extends Interceptor {
  final Dio _dio;

  ErrorInterceptor(this._dio);

  late DioErrorModel dioError;
  ErrorInterceptorHandler get handler => dioError.handler;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    dioError = DioErrorModel(handler, err);

    try {
      await handleOnErrorCases();
    } on Exception catch (e, s) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: SdkFailure.runtimeError(exception: e, stacktrace: s),
        ),
      );
    } on Error catch (e, s) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: SdkFailure.runtimeError(
            exception: Exception(e.toString()),
            stacktrace: s,
          ),
        ),
      );
    }
  }

  Future<void> handleOnErrorCases() async {
    if (dioError.hasResponseData) {
      final jsonResponse = dioError.jsonResponse;
      final errorResponse = ErrorResponse.fromJson(
        jsonResponse.containsKey(JsonKeys.error)
            ? jsonResponse[JsonKeys.error] as Map<String, dynamic>
            : jsonResponse,
      );
      switch (dioError.statusCode) {
        case 401:
          await handle401Response(errorResponseData: errorResponse);
          break;
        case 404:
          handle404Response(errorResponseData: errorResponse);
          break;
        case 500:
          handle500Response(errorResponseData: errorResponse);
          break;
        case 406:
          handle406Response(errorResponseData: errorResponse);
          break;
        default:
          _rejectUnexpected();
      }
    }

    if (!await handleTimeoutErrors()) {
      _rejectRequest(
        failure: NetworkFailure.unexpected(
          message: dioError.errorString,
        ),
      );
    }
  }

  ///Check if the [error] is related to dio timeouts.
  Future<bool> handleTimeoutErrors() async {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        handler.reject(
          DioException(
            requestOptions: dioError.requestOptions,
            error: const NetworkFailure.connectionTimeout(),
          ),
        );
        return true;
      case DioExceptionType.receiveTimeout:
        handler.reject(
          DioException(
            requestOptions: dioError.requestOptions,
            error: const NetworkFailure.receiveTimeout(),
          ),
        );
        return true;

      default:
    }
    return false;
  }

  /// Handle expired session and access token errors
  Future<void> handle401Response(
      {required ErrorResponse errorResponseData}) async {
    _rejectRequest(
      failure: NetworkFailure.unauthorized(),
    );
  }

  void handle404Response({required ErrorResponse errorResponseData}) =>
      _rejectRequest(
        failure: NetworkFailure.notFound(
          message: errorResponseData.reason ?? '${dioError.message}',
        ),
      );

  void handle406Response({required ErrorResponse errorResponseData}) =>
      _rejectRequest(
        failure: const NetworkFailure.notAcceptable(),
      );

  void handle500Response({required ErrorResponse errorResponseData}) =>
      _rejectRequest(
        failure: NetworkFailure.serverError(
          message: errorResponseData.reason ?? '${dioError.message}',
        ),
      );

  void _rejectUnexpected() => handler.reject(
        DioException(
          requestOptions: dioError.requestOptions,
          error: NetworkFailure.unexpected(message: '${dioError.message}'),
        ),
      );

  ///Tells dio to reject the request, passing in the [error] containing the [failure] that has been described by the failure above.
  void _rejectRequest({required NetworkFailure failure}) => handler.reject(
        DioException(
          requestOptions: dioError.requestOptions,
          error: failure,
        ),
      );
}
