// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:sbdv_web/screens/dashboard/dashboard_home_screen.dart' as _i1;
import 'package:sbdv_web/screens/dashboard/screens/user/user_details.dart'
    as _i5;
import 'package:sbdv_web/screens/dashboard/screens/user/user_screen.dart'
    as _i6;
import 'package:sbdv_web/screens/dashboard/screens/user/user_wrapper.dart'
    as _i7;
import 'package:sbdv_web/screens/dashboard/widgets/dashboard_screen.dart'
    as _i2;
import 'package:sbdv_web/screens/login/login_screen.dart' as _i3;
import 'package:sbdv_web/screens/not_found/not_found.dart' as _i4;

/// generated route for
/// [_i1.DashboardHomeScreen]
class DashboardHomeRoute extends _i8.PageRouteInfo<void> {
  const DashboardHomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardHomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardHomeScreen();
    },
  );
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.NotFoundScreen]
class NotFoundRoute extends _i8.PageRouteInfo<void> {
  const NotFoundRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i4.NotFoundScreen();
    },
  );
}

/// generated route for
/// [_i5.UserDetails]
class UserDetails extends _i8.PageRouteInfo<void> {
  const UserDetails({List<_i8.PageRouteInfo>? children})
      : super(
          UserDetails.name,
          initialChildren: children,
        );

  static const String name = 'UserDetails';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.UserDetails();
    },
  );
}

/// generated route for
/// [_i6.UserScreen]
class UserRoute extends _i8.PageRouteInfo<void> {
  const UserRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserScreen();
    },
  );
}

/// generated route for
/// [_i7.UserWrapper]
class UserWrapper extends _i8.PageRouteInfo<void> {
  const UserWrapper({List<_i8.PageRouteInfo>? children})
      : super(
          UserWrapper.name,
          initialChildren: children,
        );

  static const String name = 'UserWrapper';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.UserWrapper();
    },
  );
}
