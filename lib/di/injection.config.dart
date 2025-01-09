// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sbdv_web/di/injection_module.dart' as _i7;
import 'package:sbdv_web/repositories/auth/authentication_repository.dart'
    as _i5;
import 'package:sbdv_web/repositories/auth/authentication_rest_client.dart'
    as _i3;
import 'package:sbdv_web/screens/login/cubit/login/login_cubit.dart' as _i6;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalPackageDependencies = _$ExternalPackageDependencies();
    gh.lazySingleton<_i3.AuthenticationRestClient>(
      () => externalPackageDependencies.authenticationRestClient,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.Dio>(
      () => externalPackageDependencies.dio,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i5.AuthenticationRepository>(
        () => _i5.AuthenticationRepository(gh<_i3.AuthenticationRestClient>()));
    gh.factory<_i6.LoginCubit>(
        () => _i6.LoginCubit(gh<_i5.AuthenticationRepository>()));
    return this;
  }
}

class _$ExternalPackageDependencies extends _i7.ExternalPackageDependencies {}
