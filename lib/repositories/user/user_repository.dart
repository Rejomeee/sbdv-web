import 'package:injectable/injectable.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/pagination_model.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/user_model.dart';

import '../../network/rest_client_catcher.dart';
import '../../network/result.dart';
import 'user_rest_client.dart';

abstract class IUserRepository {
  Future<Result<PaginationModel<UserModel>>> getAllUsers();
}

@LazySingleton(as: IUserRepository, env: [Environment.prod])
class UserRepository implements IUserRepository {
  final UserRestClient _restClient;

  UserRepository(this._restClient);
  @override
  Future<Result<PaginationModel<UserModel>>> getAllUsers() async {
    final result = await RestClientCatcher.request<PaginationModel<UserModel>>(
      onRequest: () async {
        final response;
        response = await _restClient.getAllUsers();
        return Result.success(response);
      },
    );
    return result;
  }
}
