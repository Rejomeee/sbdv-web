import 'package:injectable/injectable.dart';

import 'authentication_rest_client.dart';

@LazySingleton()
class AuthenticationRepository {
  final AuthenticationRestClient _restClient;

  AuthenticationRepository(this._restClient);

  Future<bool> login(String username, String password) async {
    try {
      // Simulate a network call
      _restClient.loginRegister({'username': username, 'password': password});
      await Future.delayed(Duration(seconds: 2));
      return username == 'admin' && password == 'admin';
    } catch (error) {
      return false;
    }
  }
}
