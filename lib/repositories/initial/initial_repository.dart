import 'package:injectable/injectable.dart';

import '../../network/rest_client_catcher.dart';
import '../../network/result.dart';
import '../../screens/dashboard/screens/user/model/role_model.dart';
import 'initial_rest_client.dart';

abstract class IInitialRepository {
  Future<Result<List<RoleModel>>> getRoles();
}

@LazySingleton(as: IInitialRepository, env: [Environment.prod])
class InitialRepository implements IInitialRepository {
  final InitialRestClient _restClient;

  InitialRepository(this._restClient);
  Future<Result<List<RoleModel>>> getRoles() async {
    final result = await RestClientCatcher.request<List<RoleModel>>(
      onRequest: () async {
        final List<RoleModel> roles;
        roles = await _restClient.getRoles();
        return Result.success(roles);
      },
    );
    return result;
  }
}
