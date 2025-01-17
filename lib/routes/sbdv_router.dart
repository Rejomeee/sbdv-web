import 'package:auto_route/auto_route.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/di/injection.dart';
import 'package:sbdv_web/routes/routes.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class SBDVRouter extends RootStackRouter {
  @override
  void dispose() {
    // Dispose of any resources used by the router
    super.dispose();
  }

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) {
        // Read the auth token from secure storage
        serviceLocator<FlutterSecureStorage>().read(key: 'auth_token').then((token) {
          final bool isAuthenticated = token != null;
          if (isAuthenticated) {
            // If authenticated and trying to access the login route, redirect to dashboard
            if (resolver.routeName == LoginRoute.name) {
              resolver.redirect(DashboardRoute());
            }
            // Proceed to the requested route
            resolver.next();
          } else {
            // If not authenticated and trying to access a route other than login, redirect to login
            if (resolver.routeName != LoginRoute.name) {
              resolver.redirect(LoginRoute(), replace: true);
            }
            // Proceed to the requested route
            resolver.next();
          }
        });
      },
    ),
  ];

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: SBDVRoutes.login,
          initial: true,
        ),
        AutoRoute(
          page: DashboardHomeRoute.page,
          path: SBDVRoutes.dashboard,
          children: [
            AutoRoute(
              page: DashboardRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: 'users',
              page: UserWrapper.page,
              maintainState: false,
              children: [
                AutoRoute(
                  page: UserRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'details',
                  page: UserDetails.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: NotFoundRoute.page,
          path: '*',
        ),
      ];
}
