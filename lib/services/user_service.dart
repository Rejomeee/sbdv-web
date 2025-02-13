import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/di/injection.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/user_model.dart';

import '../util/contants.dart';

class UserService {
  Future<UserModel?> getUserDetails() async {
    final user =
        await serviceLocator<FlutterSecureStorage>().read(key: Constants.user);
    if (user != null) {
      try {
        final UserModel userDetails = UserModel.fromJson(jsonDecode(user));
        return userDetails;
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  Future<String?> getUserFirstName() async {
    final user = await getUserDetails();
    return user?.firstName;
  }

  Future<bool> isAdmin() async {
    final user = await getUserDetails();
    return user?.role.name.toLowerCase() == 'admin';
  }
}
