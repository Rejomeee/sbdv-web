import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  String errorMessage = '';

  void login(String username, String password) {
    // Simulate a login process
    if (username == 'admin' && password == 'admin') {
      emit(LoginSuccess());
    } else {
      errorMessage = 'Invalid username or password';
      emit(LoginFailure(error: errorMessage));
    }
  }
}
