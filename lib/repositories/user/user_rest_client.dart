import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../network/endpoints.dart';
import '../../screens/dashboard/screens/user/model/pagination_model.dart';
import '../../screens/dashboard/screens/user/model/user_model.dart';

part 'user_rest_client.g.dart';

@RestApi()
abstract class UserRestClient {
  ///Constructor that accepts an instance of [Dio].
  factory UserRestClient(Dio dio) = _UserRestClient;

  @GET(Endpoints.users)
  Future<PaginationModel<UserModel>> getAllUsers(
      @Queries() PaginationModelRequest request);
}
