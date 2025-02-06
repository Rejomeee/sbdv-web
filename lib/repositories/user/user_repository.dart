import 'package:injectable/injectable.dart';

import '../../network/rest_client_catcher.dart';
import '../../network/result.dart';
import '../../screens/dashboard/screens/user/model/pagination_model.dart';
import '../../screens/dashboard/screens/user/model/user_model.dart';
import 'user_rest_client.dart';

abstract class IUserRepository {
  Future<Result<PaginationModel<UserModel>>> getAllUsers(
    PaginationModelRequest paginationRequest, {
    String? roleId,
  });
}

@LazySingleton(as: IUserRepository, env: [Environment.prod])
class UserRepository implements IUserRepository {
  final UserRestClient _restClient;

  UserRepository(this._restClient);
  @override
  Future<Result<PaginationModel<UserModel>>> getAllUsers(
    paginationRequest, {
    roleId,
  }) async {
    final result = await RestClientCatcher.request<PaginationModel<UserModel>>(
      onRequest: () async {
        final response;
        response = await _restClient.getAllUsers(
          paginationRequest,
          roleId: roleId,
        );
        return Result.success(response);
      },
    );
    return result;
  }
}
