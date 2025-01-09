import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../repositories/auth/authentication_repository.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthenticationRepository _authenticationRepository;

  LoginCubit(this._authenticationRepository) : super(LoginInitial());

  String errorMessage = '';

  void login(String username, String password) async {
    // Simulate a login process
    final success = await _authenticationRepository.login(username, password);
    if (success) {
      emit(LoginSuccess());
    } else {
      errorMessage = 'Invalid username or password';
      emit(LoginFailure(error: errorMessage));
    }
  }
}
