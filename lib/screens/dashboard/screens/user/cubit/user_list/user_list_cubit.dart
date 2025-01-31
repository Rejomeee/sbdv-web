import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sbdv_web/repositories/user/user_repository.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/pagination_model.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/user_model.dart';

part 'user_list_state.dart';
part 'user_list_cubit.freezed.dart';

@Injectable(env: [Environment.prod])
class UserListCubit extends Cubit<UserListState> {
  final IUserRepository _repository;

  UserListCubit(this._repository) : super(UserListState.initial());

  final userSource = UserSource<UserModel>();

  Future<void> init() async {
    final result = await _repository.getAllUsers();
    await result.when(
      success: (result) async {
        // print('result: ${result.toJson(
        //   (p0) {
        //     print('hehe');
        //     print(p0.toJson());
        //     return p0.toJson();
        //   },
        // )}');

        // userSource.data = result.data;
        // final List<Widget> rowsDataWidgets = [];
        // await result.data.map((e) {
        //   rowsDataWidgets.addAll([
        //     Text(e.firstName),
        //     Text(e.lastName),
        //     Text(e.email),
        //     Text(e.username),
        //     Text(e.role.name)
        //   ]);
        // }).toList();
        // userSource.dataCellsBuilder = rowsDataWidgets;
        // print(result.data);
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
}
