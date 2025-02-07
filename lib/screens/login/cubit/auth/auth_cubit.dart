import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/routes/sbdv_router.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

import '../../../../di/injection.dart';
import '../../../../network/failures/app_failure.dart';
import '../../../../repositories/auth/authentication_repository.dart';
import '../../../../util/contants.dart';
import '../../model/auth_model.dart';
import '../../model/login_form_validated_field.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  final AuthenticationRepository _authenticationRepository;

  AuthCubit(this._authenticationRepository) : super(AuthState.initial());

  String errorMessage = '';

  bool isAuthenticated = false;

  ///Updates the `username` property of the model from the state using [value]
  void onUsernameChanged(String value) {
    emit(
      state.copyWith(
        validatedUsername: LoginFormValidatedField(
          value,
        ),
        model: state.model.copyWith(username: value),
      ),
    );
  }

  ///Updates the `password` property of the model from the state using [value]
  void onPasswordChanged(String value) {
    emit(
      state.copyWith(
        validatedPassword: LoginFormValidatedField(
          value,
        ),
        model: state.model.copyWith(password: value),
      ),
    );
  }

  void login(String username, String password) async {
    emit(state.copyWith(state: AuthStates.loading, error: null));
    await Future<dynamic>.delayed(const Duration(seconds: 2));
    if (_isDataValid) {
      // Simulate a login process
      final result = await _authenticationRepository.login(username, password);
      result.when(
        success: (auth) async {
          await serviceLocator<FlutterSecureStorage>()
              .write(key: Constants.authToken, value: auth.token);
          auth.data?.saveUserModel();
          isAuthenticated = true;
          emit(state.copyWith(state: AuthStates.success));
        },
        failure: (failure) {
          errorMessage = 'Invalid username or password';
          isAuthenticated = false;
          emit(state.copyWith(
            error: failure,
            state: AuthStates.initial,
          ));
        },
      );
    } else {
      emit(
        state.copyWith(
          shouldShowValidation: true,
          state: AuthStates.initial,
        ),
      );
    }
  }

  void logout() async {
    final result = await _authenticationRepository.logout();
    result.when(
      success: (success) async {
        await serviceLocator<FlutterSecureStorage>()
            .delete(key: Constants.authToken);
        await serviceLocator<FlutterSecureStorage>()
            .delete(key: Constants.user);

        isAuthenticated = false;
        emit(AuthState.initial());
      },
      failure: (failure) async {
        await serviceLocator<FlutterSecureStorage>()
            .delete(key: Constants.authToken);
        await serviceLocator<FlutterSecureStorage>()
            .delete(key: Constants.user);
        emit(AuthState.initial());
      },
    );
    serviceLocator<SBDVRouter>().replace(LoginRoute());
  }

  void checkAuth() async {
    final result = await _authenticationRepository.checkAuth();
    result.when(
      success: (success) async {
        await serviceLocator<FlutterSecureStorage>()
            .write(key: Constants.authToken, value: success.token);
        isAuthenticated = true;
        // emit(AuthSuccess());
      },
      failure: (failure) async {
        isAuthenticated = false;
        await serviceLocator<FlutterSecureStorage>()
            .delete(key: Constants.authToken);
        await serviceLocator<FlutterSecureStorage>()
            .delete(key: Constants.user);
        // emit(AuthLogout());
      },
    );
  }

  bool get _isDataValid =>
      state.validatedUsername.isValid() && state.validatedPassword.isValid();
}
