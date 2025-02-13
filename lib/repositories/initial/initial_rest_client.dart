import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../network/endpoints.dart';
import '../../screens/dashboard/screens/user/model/role_model.dart';

part 'initial_rest_client.g.dart';

@RestApi()
abstract class InitialRestClient {
  factory InitialRestClient(Dio dio) = _InitialRestClient;

  @GET(Endpoints.roles)
  Future<List<RoleModel>> getRoles();
}
