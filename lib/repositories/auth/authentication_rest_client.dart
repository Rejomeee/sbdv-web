// coverage:ignore-file
// ignore_for_file: unnecessary_const

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../network/endpoints.dart';
import 'model/auth_token_model.dart';

part 'authentication_rest_client.g.dart';

@RestApi()
abstract class AuthenticationRestClient {
  ///Constructor that accepts an instance of [Dio].
  factory AuthenticationRestClient(Dio dio) = _AuthenticationRestClient;

  @POST(Endpoints.login)
  Future<AuthTokenModel> loginRegister(@Body() Map<String, dynamic> body);

  @GET(Endpoints.checkAuth)
  Future<AuthTokenModel> checkAuth();
}
