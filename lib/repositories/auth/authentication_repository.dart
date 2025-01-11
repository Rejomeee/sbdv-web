import 'package:injectable/injectable.dart';
import 'package:sbdv_web/repositories/auth/model/auth_token_model.dart';

import '../../network/rest_client_catcher.dart';
import '../../network/result.dart';
import 'authentication_rest_client.dart';

@LazySingleton()
class AuthenticationRepository {
  final AuthenticationRestClient _restClient;

  AuthenticationRepository(this._restClient);

  Future<Result<AuthTokenModel>> login(String username, String password) async {
    final result = await RestClientCatcher.request<AuthTokenModel>(
      onRequest: () async {
        final AuthTokenModel authTokenModel;
        authTokenModel = await _restClient.loginRegister({'username': username, 'password': password});
        print('arone login authTokenModel $authTokenModel');
        return Result.success(authTokenModel);
      },
    );
    print('arone login result ${result.failure}');
    return result;
  }
}
