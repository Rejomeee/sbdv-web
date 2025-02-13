// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sbdv_web/di/injection_module.dart' as _i323;
import 'package:sbdv_web/repositories/auth/authentication_repository.dart'
    as _i1059;
import 'package:sbdv_web/repositories/auth/authentication_rest_client.dart'
    as _i128;
import 'package:sbdv_web/repositories/initial/initial_repository.dart' as _i707;
import 'package:sbdv_web/repositories/initial/initial_rest_client.dart'
    as _i608;
import 'package:sbdv_web/repositories/user/user_repository.dart' as _i489;
import 'package:sbdv_web/repositories/user/user_rest_client.dart' as _i619;
import 'package:sbdv_web/routes/sbdv_router.dart' as _i61;
import 'package:sbdv_web/screens/dashboard/cubit/initial/initial_cubit.dart'
    as _i1053;
import 'package:sbdv_web/screens/dashboard/screens/user/cubit/user_list/user_list_cubit.dart'
    as _i70;
import 'package:sbdv_web/screens/login/cubit/auth/auth_cubit.dart' as _i469;
import 'package:sbdv_web/services/user_service.dart' as _i313;

const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalPackageDependencies = _$ExternalPackageDependencies();
    gh.lazySingleton<_i361.Dio>(
      () => externalPackageDependencies.dio,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i61.SBDVRouter>(
      () => externalPackageDependencies.sbdvRouter,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => externalPackageDependencies.secureStorage,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i313.UserService>(
      () => externalPackageDependencies.userService,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i128.AuthenticationRestClient>(
      () => externalPackageDependencies.authenticationRestClient,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i619.UserRestClient>(
      () => externalPackageDependencies.userRestClient,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i608.InitialRestClient>(
      () => externalPackageDependencies.initialRestClient,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i1059.AuthenticationRepository>(() =>
        _i1059.AuthenticationRepository(gh<_i128.AuthenticationRestClient>()));
    gh.lazySingleton<_i707.IInitialRepository>(
      () => _i707.InitialRepository(gh<_i608.InitialRestClient>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i489.IUserRepository>(
      () => _i489.UserRepository(gh<_i619.UserRestClient>()),
      registerFor: {_prod},
    );
    gh.factory<_i70.UserListCubit>(
      () => _i70.UserListCubit(gh<_i489.IUserRepository>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i469.AuthCubit>(
        () => _i469.AuthCubit(gh<_i1059.AuthenticationRepository>()));
    gh.lazySingleton<_i1053.InitialCubit>(
      () => _i1053.InitialCubit(gh<_i707.IInitialRepository>()),
      registerFor: {_prod},
    );
    return this;
  }
}

class _$ExternalPackageDependencies extends _i323.ExternalPackageDependencies {}
