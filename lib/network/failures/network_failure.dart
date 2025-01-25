import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

///Sealed class containing failures related to the team feature
@freezed
class NetworkFailure with _$NetworkFailure {
  const NetworkFailure._();

  ///A failure representing the flag when daily limits are reached by the user
  const factory NetworkFailure.maintenanceMode() = _MaintenanceMode;

  ///A failure representing 401 status codes returned for unauthorized requests
  const factory NetworkFailure.unauthorized() = _Unauthorized;

  ///A failure representing 401 status code errors related to session time outs
  const factory NetworkFailure.sessionTimedOut() = _SessionTimedOut;

  ///A failure representing 404 status code errors
  const factory NetworkFailure.notFound({required String message}) = _NotFound;

  ///A failure representing 500 status code errors
  const factory NetworkFailure.serverError({required String message}) = _ServerError;

  ///A failure representing a successful call but returned an empty list when we expect results to have more than 0
  const factory NetworkFailure.emptyList() = _EmptyList;

  ///A failure representing a successful call but no response data was received
  const factory NetworkFailure.nullResponse() = _NullResponse;

  ///A failure that occurs for any errors that are expected to return.
  const factory NetworkFailure.expected() = _Expected;

  ///A failure that occurs for any uncaught errors that may occur.
  const factory NetworkFailure.unexpected({required String message}) = _Unexpected;

  ///A failure representing a successful call but channelUrl is null
  const factory NetworkFailure.channelNull() = _ChannelNull;

  ///A failure that occurs for connection timeout.
  const factory NetworkFailure.connectionTimeout() = _ConnectionTimeout;

  ///A failure that occurs for receive timeout.
  const factory NetworkFailure.receiveTimeout({String? message}) = _ReceiveTimeout;

  /// A failure representing 406 status code errors.
  const factory NetworkFailure.notAcceptable() = _NotAcceptable;

  // coverage:ignore-start

  ///Returns the equivalent String message for the caption on our error UI
  String get errorCaption => when(
        unauthorized: () => '',
        sessionTimedOut: () => '',
        maintenanceMode: () => "Strings.maintenanceModeCaption",
        nullResponse: () => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        emptyList: () => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        notFound: (msg) => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        expected: () => '',
        unexpected: (msg) => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        serverError: (msg) => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        channelNull: () => "Constants.inboxPrint ? Strings.devErrorChannelUrlNull : Strings.defaultErrorCaption",
        connectionTimeout: () => "Constants.inboxPrint ? Strings.devErrorConnection : Strings.defaultErrorCaption",
        receiveTimeout: (msg) => msg ?? "Strings.defaultErrorCaption",
        notAcceptable: () => "Constants.inboxPrint ? Strings.dev406Error : Strings.defaultErrorCaption",
      );

  ///Returns the equivalent String message for the message on our error UI
  String get errorMessage => when(
        maintenanceMode: () => "Strings.maintenanceModeDescription",
        unauthorized: () => "Unauthorized Request",
        sessionTimedOut: () => "Strings.timeOutErrorMessage",
        expected: () => '',
        unexpected: (msg) => "Constants.inboxPrint ? msg : Strings.defaultErrorMessage",
        nullResponse: () => "Constants.inboxPrint ? Strings.devErrorNullResp : Strings.defaultErrorMessage",
        serverError: (msg) => "Constants.inboxPrint ? '$msg' : Strings.defaultErrorMessage",
        notFound: (msg) => "Constants.inboxPrint ? '$msg' : Strings.defaultErrorMessage",
        emptyList: () => "Constants.inboxPrint ? Strings.devErrorEmptyList : Strings.defaultErrorMessage",
        channelNull: () => "Strings.defaultErrorMessage",
        connectionTimeout: () => "Strings.defaultErrorMessage",
        receiveTimeout: (msg) => "Strings.defaultErrorMessage",
        notAcceptable: () => "Strings.defaultErrorCaption",
      );

  // coverage:ignore-end
}
