import 'package:auto_route/auto_route.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbdv_web/di/injection.dart';
import 'package:sbdv_web/routes/routes.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class SBDVRouter extends RootStackRouter {
  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) {
        // Read the auth token from secure storage
        serviceLocator<FlutterSecureStorage>().read(key: 'auth_token').then((token) {
          final bool isAuthenticated = token != null;
          // if (isAuthenticated || resolver.routeName == LoginRoute.name) {
          //   resolver.next();
          // } else {
          //   resolver.redirect(
          //     LoginRoute(onResult: (didLogin) {
          //       resolver.resolveNext(didLogin, reevaluateNext: false);
          //     }),
          //   );
          // }
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
          page: DashboardRoute.page,
          path: SBDVRoutes.dashboard,
        ),
        AutoRoute(
          page: NotFoundRoute.page,
          path: '*',
        ),
      ];
}

// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[
//     // AutoRoute<dynamic>(page: SampleScreen, initial: true),
//     // CustomRoute<dynamic>(
//     //   page: EntryPoint,
//     //   transitionsBuilder: TransitionsBuilders.fadeIn,
//     //   // initial: true,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: MessageHomeScreen,
//     //   transitionsBuilder: TransitionsBuilders.fadeIn,
//     //   // initial: true,
//     // ),
//     // // CustomRoute<dynamic>(
//     // //   page: UpdatesScreen,
//     // //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // // ),
//     // // CustomRoute<dynamic>(
//     // //   page: TransactionsScreen,
//     // //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // // ),
//     // CustomRoute<dynamic>(
//     //   page: MarketingFullScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: ManageNotificationScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideBottom,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: MessageScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: SupportHomeScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: ChatScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: SupportHomeScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: MaintenanceScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: FullImageScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//     // CustomRoute<dynamic>(
//     //   page: PreviewImageScreen,
//     //   transitionsBuilder: TransitionsBuilders.slideLeft,
//     // ),
//   ],
// )
// class $MayaRouter {}
