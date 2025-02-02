part of 'user_list_cubit.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    required PaginationModel<UserModel> userTable,
    required UserSource userSource,
  }) = _UserListState;
  factory UserListState.initial() => UserListState(
        userTable: PaginationModel.empty(),
        userSource: UserSource(),
      );
}
