import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../di/injection.dart';
import '../../../../repositories/initial/initial_repository.dart';

part 'initial_cubit.freezed.dart';
part 'initial_state.dart';

@LazySingleton(env: [Environment.prod])
class InitialCubit extends Cubit<InitialState> {
  final IInitialRepository _repository;
  InitialCubit(this._repository) : super(InitialState.initial());

  Future<void> init() async {
    print('InitialCubit init');

    ///Do something
    checkRoleExist();
  }

  Future<void> checkRoleExist() async {
    final rolesExist = await serviceLocator<FlutterSecureStorage>().read(key: 'roles');
    if (rolesExist == null) {
      final roles = await _repository.getRoles();
      roles.when(
        success: (roles) async {
          final rolesJson = jsonEncode(roles);
          await serviceLocator<FlutterSecureStorage>().write(key: 'roles', value: rolesJson);
        },
        failure: (failure) {
          print(failure);
        },
      );
    }
  }
}
