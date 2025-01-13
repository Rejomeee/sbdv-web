import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../repositories/auth/authentication_repository.dart';

part 'auth_state.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  final AuthenticationRepository _authenticationRepository;
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  AuthCubit(this._authenticationRepository) : super(AuthInitial());

  String errorMessage = '';

  bool isAuthenticated = false;

  void login(String username, String password) async {
    // Simulate a login process
    final result = await _authenticationRepository.login(username, password);
    result.when(
      success: (success) async {
        await _secureStorage.write(key: 'auth_token', value: success.token);
        isAuthenticated = true;
        print('arone login $isAuthenticated');
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
        await _secureStorage.delete(key: 'auth_token');
        isAuthenticated = false;
        emit(AuthLogout());
      },
      failure: (failure) async {
        await _secureStorage.delete(key: 'auth_token');
        emit(AuthFailure(error: failure.errorMessage));
      },
    );
  }

  void checkAuth() async {
    final result = await _authenticationRepository.checkAuth();
    result.when(
      success: (success) async {
        await _secureStorage.write(key: 'auth_token', value: success.token);
        isAuthenticated = true;
        emit(AuthSuccess());
      },
      failure: (failure) async {
        isAuthenticated = false;
        await _secureStorage.delete(key: 'auth_token');
        emit(AuthLogout());
      },
    );
  }

  Future<bool> checkAuthen() async {
    final result = await _authenticationRepository.checkAuth();
    return result.when(
      success: (success) {
        return true;
      },
      failure: (failure) {
        return false;
      },
    );
  }
}
