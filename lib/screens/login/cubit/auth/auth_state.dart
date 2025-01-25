part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required LoginFormValidatedField validatedUsername,
    required LoginFormValidatedField validatedPassword,
    required AuthModel model,
    required bool shouldShowValidation,
    AuthStates? state,
    AppFailure? error,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
        validatedUsername: LoginFormValidatedField(''),
        validatedPassword: LoginFormValidatedField(''),
        shouldShowValidation: false,
        model: AuthModel.empty(),
        state: AuthStates.initial,
      );
}

enum AuthStates {
  initial,
  loading,
  success,
}
