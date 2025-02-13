import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../di/injection.dart';
import '../../../../repositories/initial/initial_repository.dart';
import '../../../../util/contants.dart';
import '../../../../services/user_service.dart';

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

    final user = await serviceLocator<UserService>().getUserDetails();
    //* Todo arone: filter per subdivision on user table and role filter is dependent on the logged in user role (admin only)
    print(user?.toJson());
  }

  Future<void> checkRoleExist() async {
    final rolesExist =
        await serviceLocator<FlutterSecureStorage>().read(key: Constants.roles);
    if (rolesExist == null) {
      final roles = await _repository.getRoles();
      roles.when(
        success: (roles) async {
          final rolesJson = jsonEncode(roles);
          await serviceLocator<FlutterSecureStorage>()
              .write(key: Constants.roles, value: rolesJson);
        },
        failure: (failure) {
          print(failure);
        },
      );
    }
  }
}
