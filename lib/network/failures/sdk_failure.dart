import 'package:freezed_annotation/freezed_annotation.dart';

part 'sdk_failure.freezed.dart';

@freezed
class SdkFailure with _$SdkFailure {
  const SdkFailure._();

  ///Represents a failure due to a caught exception or error in the flutter side.
  ///
  ///A solid example of when this could appear is if for whatever reason the return from the backend becomes different,
  ///the resulting exception could be caught as a failure and handled properly.
  ///
  ///We can also use this case to display runtime errors to the developer if we're in debug mode although this is not
  ///currently implemented but can be added as something we can do in the future.
  const factory SdkFailure.runtimeError({
    required Exception exception,
    required StackTrace? stacktrace,
  }) = _RuntimeError;

  ///Represents a passthrough failure for passing what used to be `DefaultError` class messages
  const factory SdkFailure.generic(Exception exception) = _Generic;

  ///Represents a failure that requires a simple string display message
  const factory SdkFailure.genericMessage(String message) = _GenericMessage;

  ///A failure that occurs for connection timeout.
  const factory SdkFailure.connectionTimeout({String? message}) = _ConnectionTimeout;

  // coverage:ignore-start

  ///Returns the equivalent String message for the caption on our error UI
  String get errorCaption => when(
        generic: (_) => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        genericMessage: (_) => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        runtimeError: (msg, _) => "Constants.inboxPrint ? Strings.devErrorCaption : Strings.defaultErrorCaption",
        connectionTimeout: (msg) => msg ?? "Strings.defaultErrorCaption",
      );

  ///Returns the equivalent String message for the message on our error UI
  String get errorMessage => when(
        //* Found the next 3 hard coded in errors, not sure if this is an official string
        generic: (exception) => "Constants.inboxPrint ? exception.toString() : Strings.defaultErrorMessage",
        genericMessage: (msg) => "Constants.inboxPrint ? msg : Strings.defaultErrorCaption",
        runtimeError: (msg, _) => "Constants.inboxPrint ? msg.toString() : Strings.defaultErrorMessage",
        connectionTimeout: (msg) => "Strings.defaultErrorMessage",
      );

  // coverage:ignore-end
}
