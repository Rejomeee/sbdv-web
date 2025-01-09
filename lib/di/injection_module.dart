import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../network/dio_instance.dart';
import '../repositories/auth/authentication_rest_client.dart';

//* External packages that need to be used as dependencies for classes should be placed in here

@module
abstract class ExternalPackageDependencies {
  //* Helper Classes and Third Party Libraries

  @LazySingleton(env: [Environment.prod])
  Dio get dio => DioHelper.createDioInstancecreateDioInstance();

  //* Rest Clients

  @LazySingleton(env: [Environment.prod])
  AuthenticationRestClient get authenticationRestClient =>
      AuthenticationRestClient(dio);
}
