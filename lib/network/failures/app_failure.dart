// coverage:ignore-file
import 'package:freezed_annotation/freezed_annotation.dart';

import 'network_failure.dart';
import 'sdk_failure.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const AppFailure._();

  ///A failure resulting from Network calls through our RESTful API clients
  const factory AppFailure.networkFailure(NetworkFailure networkFailure) = _NetworkFailure;

  ///A failure resulting from exceptions or errors from the Flutter SDK side
  const factory AppFailure.sdkFailure(SdkFailure sdkFailure) = _SdkFailure;

  ///Returns true if the [AppFailure] contains an [NetworkFailure]
  bool get isNetworkFailure => maybeWhen(
        networkFailure: (_) => true,
        orElse: () => false,
      );

  ///Returns true if the [AppFailure] contains an [SdkFailure]
  bool get isSdkFailure => maybeWhen(
        sdkFailure: (_) => true,
        orElse: () => false,
      );

  ///Returns the caption of the specific failure this contains
  String get errorCaption => when(
        networkFailure: (n) => n.errorCaption,
        sdkFailure: (s) => s.errorCaption,
      );

  ///Returns the message of the specific failure this contains
  String get errorMessage => when(
        networkFailure: (n) => n.errorMessage,
        sdkFailure: (s) => s.errorMessage,
      );

  ///Returns true if the failure is a network failure and is daily or monthly limit reached union case
  bool get isLimitReachedError => maybeWhen(
        networkFailure: (n) => n.maybeWhen(
          orElse: () => false,
        ),
        orElse: () => false,
      );

  ///Returns true if the failure is a network failure and is maintenance mode union case
  bool get isMaintenanceMode => maybeWhen(
        networkFailure: (n) => n.maybeWhen(
          maintenanceMode: () => true,
          orElse: () => false,
        ),
        orElse: () => false,
      );

  ///Returns true if the failure is a network failure and a session timeout union case
  bool get is404Error => maybeWhen(
        networkFailure: (failure) => failure.maybeWhen(
          notFound: (_) => true,
          orElse: () => false,
        ),
        orElse: () => false,
      );

  ///Returns true if the failure is a network failure and a serverError union case
  bool get is500Error => maybeWhen(
        networkFailure: (failure) => failure.maybeWhen(
          serverError: (_) => true,
          orElse: () => false,
        ),
        orElse: () => false,
      );

  ///Returns true if the failure is a network failure and a session timeout union case
  bool get isSessionTimeOutError => maybeWhen(
        networkFailure: (failure) => failure == const NetworkFailure.sessionTimedOut(),
        orElse: () => false,
      );

  ///Returns true if the failure is a network failure and a unauthorized union case
  bool get isUnauthorizedError => maybeWhen(
        networkFailure: (failure) => failure == const NetworkFailure.unauthorized(),
        orElse: () => false,
      );

  ///Returns true if the failure is when the channel creation endpoint has an ongoing process on the backend.
  bool get isCreateChannelStillOngoing => maybeWhen(
        networkFailure: (failure) => failure == const NetworkFailure.channelNull(),
        orElse: () => false,
      );

  ///Returns true if the failure is a connection or receive timeout.
  bool get isDioTimeout => maybeWhen(
        networkFailure: (failure) =>
            failure == const NetworkFailure.connectionTimeout() || failure == const NetworkFailure.receiveTimeout(),
        orElse: () => false,
      );

  ///Returns true if the failure is a network failure and a null response union case
  bool get isNullResponse => maybeWhen(
        networkFailure: (failure) => failure == const NetworkFailure.nullResponse(),
        orElse: () => false,
      );

  bool get isMayaTokenExpired => maybeWhen(
        networkFailure: (failure) =>
            failure == const NetworkFailure.unauthorized() || failure == const NetworkFailure.sessionTimedOut(),
        orElse: () => false,
      );

  bool get is406Error => maybeWhen(
        networkFailure: (networkFailure) => networkFailure == const NetworkFailure.notAcceptable(),
        orElse: () => false,
      );

  ///Returns an [AppFailure] containing a [NetworkFailure]'s null response union case
  factory AppFailure.nullResponse() => const AppFailure.networkFailure(NetworkFailure.nullResponse());

  ///Returns an [AppFailure] containing a [NetworkFailure]'s empty list union case
  factory AppFailure.emptyList() => const AppFailure.networkFailure(NetworkFailure.emptyList());

  ///Returns an [AppFailure] containing a generic union case for [SdkFailure] with the given [exception]
  factory AppFailure.generic(Exception exception) => AppFailure.sdkFailure(
        SdkFailure.generic(exception),
      );

  ///Returns an [AppFailure] containing a [NetworkFailure]'s maintenance mode union case
  factory AppFailure.maintenanceMode() => const AppFailure.networkFailure(NetworkFailure.maintenanceMode());

  factory AppFailure.nullCheckError(String function) =>
      AppFailure.sdkFailure(SdkFailure.generic(Exception('Null check error at $function')));
}
