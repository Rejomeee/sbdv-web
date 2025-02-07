import 'package:auto_route/auto_route.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/di/injection.dart';
import 'package:sbdv_web/routes/routes.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

import '../util/contants.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class SBDVRouter extends RootStackRouter {
  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) {
        // Read the auth token from secure storage
        serviceLocator<FlutterSecureStorage>()
            .read(key: Constants.authToken)
            .then((token) {
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
        CustomRoute(
          page: LoginRoute.page,
          path: SBDVRoutes.login,
          initial: true,
        ),
        CustomRoute(
          page: DashboardHomeRoute.page,
          path: SBDVRoutes.dashboard,
          keepHistory: false,
          children: [
            CustomRoute(
              page: DashboardRoute.page,
              initial: true,
            ),
            CustomRoute(
              path: 'announcements',
              page: AnnouncementWrapper.page,
              maintainState: false,
              children: [
                CustomRoute(
                  page: AnnouncementRoute.page,
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              path: 'residents',
              page: ResidentWrapper.page,
              maintainState: false,
              children: [
                CustomRoute(
                  page: ResidentRoute.page,
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              path: 'subdivisions',
              page: SubdivisionWrapper.page,
              maintainState: false,
              children: [
                CustomRoute(
                  page: SubdivisionRoute.page,
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              path: 'roles',
              page: RoleWrapper.page,
              maintainState: false,
              children: [
                CustomRoute(
                  page: RoleRoute.page,
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              path: 'logs',
              page: LogWrapper.page,
              maintainState: false,
              children: [
                CustomRoute(
                  page: LogRoute.page,
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              path: 'users',
              page: UserWrapper.page,
              maintainState: false,
              children: [
                CustomRoute(
                  page: UserRoute.page,
                  initial: true,
                ),
                CustomRoute(
                  path: 'details',
                  page: UserDetails.page,
                ),
              ],
            ),
          ],
        ),
        CustomRoute(
          page: NotFoundRoute.page,
          path: '*',
        ),
      ];
}
