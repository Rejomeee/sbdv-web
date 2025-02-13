import 'dart:async';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../repositories/user/user_repository.dart';
import '../../model/pagination_model.dart';
import '../../model/role_model.dart';
import '../../model/user_model.dart';

part 'user_list_cubit.freezed.dart';
part 'user_list_state.dart';

@Injectable(env: [Environment.prod])
class UserListCubit extends Cubit<UserListState> {
  final IUserRepository _repository;
  Timer? _debounce;

  UserListCubit(this._repository) : super(UserListState.initial());
  late PaginationModelRequest paginationRequest;
  RoleModel? role;

  Future<void> nextPage(int value) async {
    if (paginationRequest.page == state.userTable.totalPages) {
      return;
    }
    int itemsPerPage = state.userSource.data.length;
    if (value >= (itemsPerPage / 2).floor() &&
        state.userSource.data.length < state.userSource.totalCount) {
      paginationRequest.page++;
      await reqGetAllUsers(addToList: true);
    }
  }

  Future<void> reqGetAllUsers({bool addToList = false}) async {
    final result = await _repository.getAllUsers(
      paginationRequest,
      roleId: role?.id,
    );
    result.when(
      success: (result) {
        final userSource = state.userSource;
        if (addToList) {
          userSource.data.addAll(result.data);
        } else {
          state.paginatorController.goToFirstPage();
          userSource.data = result.data;
        }
        userSource.totalCount = result.total;
        userSource.refresh();
        emit(state.copyWith(
          userTable: result,
          userSource: userSource,
        ));
      },
      failure: (error) {
        print('error: $error');
      },
    );
  }

  Future<void> init() async {
    paginationRequest = PaginationModelRequest();
    role = null;
    await reqGetAllUsers();
  }

  Future<void> searchOnChange(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      paginationRequest = PaginationModelRequest(q: query);
      await reqGetAllUsers();
    });
  }

  Future<void> filterByRole(RoleModel? selectedRole) async {
    if (selectedRole == null || selectedRole == RoleModel.all()) {
      role = null;
    } else {
      role = selectedRole;
    }
    paginationRequest = PaginationModelRequest();
    await reqGetAllUsers();
  }
}
