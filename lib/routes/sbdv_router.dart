import 'package:auto_route/auto_route.dart';
import 'package:sbdv_web/routes/routes.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class SBDVRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: SBDVRoutes.login,
          initial: true,
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
