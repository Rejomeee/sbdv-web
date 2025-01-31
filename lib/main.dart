import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:sbdv_web/routes/sbdv_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'di/injection.dart';
import 'routes/side_menu_observer.dart';
import 'screens/dashboard/screens/user/cubit/user_list/user_list_cubit.dart';
import 'screens/login/cubit/auth/auth_cubit.dart';
import 'util/styles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencyInjection(Environment.prod);
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthCubit>(
          create: (_) => serviceLocator<AuthCubit>(),
        ),
        Provider<UserListCubit>(
          create: (_) => serviceLocator<UserListCubit>(),
        ),
      ],
      // child: MaterialApp(
      //   title: 'Dashborad UIxx',
      //   debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //     scaffoldBackgroundColor: backgroundColor,
      //     brightness: Brightness.dark,
      //   ),
      //   home: const LoginScreen(),
      //   // home: const MainScreen(),
      // ),
      child: MaterialApp.router(
        title: 'Dashborad UIxx',
        debugShowCheckedModeBanner: false,
        themeAnimationDuration: Duration.zero,
        // theme: ThemeData(
        //   scaffoldBackgroundColor: backgroundColor,
        //   brightness: Brightness.dark,
        // ),
        theme: Styles.lightTheme,
        routerConfig: serviceLocator<SBDVRouter>().config(
          navigatorObservers: () => [SideMenuObserver()],
        ),
        // home: const LoginScreen(),
        // home: const MainScreen(),
      ),
    );
  }
}
