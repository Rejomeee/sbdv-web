import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sbdv_web/repositories/user/user_repository.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/pagination_model.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/user_model.dart';
import 'dart:async';

import '../../../../../../network/result.dart';

part 'user_list_state.dart';
part 'user_list_cubit.freezed.dart';

@Injectable(env: [Environment.prod])
class UserListCubit extends Cubit<UserListState> {
  final IUserRepository _repository;
  Timer? _debounce;

  UserListCubit(this._repository) : super(UserListState.initial());
  late PaginationModelRequest paginationRequest;

  Future<void> nextPage(int value) async {
    if (paginationRequest.page == state.userTable.totalPages) {
      return;
    }
    int itemsPerPage = paginationRequest.limit;
    if (value >= (itemsPerPage / 2).floor() &&
        state.userSource.data.length < state.userSource.totalCount) {
      paginationRequest.page++;
      final result = await reqGetAllUsers();
      await result.when(
        success: (result) async {
          state.userSource.data.addAll(result.data);
          state.userSource.totalCount = result.total;
          state.userSource.refresh();
          emit(state.copyWith(
            userTable: result,
            userSource: state.userSource,
          ));
        },
        failure: (error) async {
          print('error: $error');
        },
      );
    }
  }

  Future<Result<PaginationModel<UserModel>>> reqGetAllUsers() async =>
      await _repository.getAllUsers(paginationRequest);

  Future<void> init() async {
    paginationRequest = PaginationModelRequest();
    final result = await reqGetAllUsers();
    await result.when(
      success: (result) async {
        final userSource = UserSource();
        userSource.data = result.data;
        userSource.totalCount = result.total;
        emit(state.copyWith(
          userTable: result,
          userSource: userSource,
        ));
      },
      failure: (error) async {
        print('error: $error');
      },
    );
  }

  Future<void> searchOnChange(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      paginationRequest = PaginationModelRequest(q: query);
      final result = await reqGetAllUsers();
      await result.when(
        success: (result) async {
          state.userSource.data = result.data;
          state.userSource.totalCount = result.total;
          state.userSource.refresh();
          emit(state.copyWith(
            userTable: result,
            userSource: state.userSource,
          ));
        },
        failure: (error) async {
          print('error: $error');
        },
      );
    });
  }
}
