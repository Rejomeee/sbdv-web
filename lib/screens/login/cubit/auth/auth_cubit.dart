import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/routes/sbdv_router.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

import '../../../../di/injection.dart';
import '../../../../repositories/auth/authentication_repository.dart';

part 'auth_state.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  final AuthenticationRepository _authenticationRepository;

  AuthCubit(this._authenticationRepository) : super(AuthInitial());

  String errorMessage = '';

  bool isAuthenticated = false;

  void login(String username, String password) async {
    // Simulate a login process
    final result = await _authenticationRepository.login(username, password);
    result.when(
      success: (success) async {
        await serviceLocator<FlutterSecureStorage>().write(key: 'auth_token', value: success.token);
        isAuthenticated = true;
        emit(AuthSuccess());
      },
      failure: (failure) {
        errorMessage = 'Invalid username or password';
        isAuthenticated = false;
        emit(AuthFailure(error: failure.errorMessage));
      },
    );
  }

  void logout() async {
    final result = await _authenticationRepository.logout();
    result.when(
      success: (success) async {
        await serviceLocator<FlutterSecureStorage>().delete(key: 'auth_token');
        isAuthenticated = false;
        emit(AuthLogout());
      },
      failure: (failure) async {
        await serviceLocator<FlutterSecureStorage>().delete(key: 'auth_token');
      },
    );
    serviceLocator<SBDVRouter>().replace(LoginRoute());
  }

  void checkAuth() async {
    final result = await _authenticationRepository.checkAuth();
    result.when(
      success: (success) async {
        await serviceLocator<FlutterSecureStorage>().write(key: 'auth_token', value: success.token);
        isAuthenticated = true;
        emit(AuthSuccess());
      },
      failure: (failure) async {
        isAuthenticated = false;
        await serviceLocator<FlutterSecureStorage>().delete(key: 'auth_token');
        emit(AuthLogout());
      },
    );
  }
}
