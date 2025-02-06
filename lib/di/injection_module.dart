import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../network/dio_helper.dart';
import '../repositories/auth/authentication_rest_client.dart';
import '../repositories/initial/initial_rest_client.dart';
import '../repositories/user/user_rest_client.dart';
import '../routes/sbdv_router.dart';

//* External packages that need to be used as dependencies for classes should be placed in here

@module
abstract class ExternalPackageDependencies {
  //* Helper Classes and Third Party Libraries

  @LazySingleton(env: [Environment.prod])
  Dio get dio => DioHelper.createDioInstancecreateDioInstance();

  @LazySingleton(env: [Environment.prod])
  SBDVRouter get sbdvRouter => SBDVRouter();

  @LazySingleton(env: [Environment.prod])
  FlutterSecureStorage get secureStorage => FlutterSecureStorage();

  //* Rest Clients

  @LazySingleton(env: [Environment.prod])
  AuthenticationRestClient get authenticationRestClient => AuthenticationRestClient(dio);

  @LazySingleton(env: [Environment.prod])
  UserRestClient get userRestClient => UserRestClient(dio);

  @LazySingleton(env: [Environment.prod])
  InitialRestClient get initialRestClient => InitialRestClient(dio);
}
