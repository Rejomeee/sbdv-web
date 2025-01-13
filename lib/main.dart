import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:sbdv_web/routes/sbdv_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'const/constant.dart';
import 'di/injection.dart';
import 'screens/login/cubit/auth/auth_cubit.dart';

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
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          brightness: Brightness.dark,
        ),
        routerConfig: serviceLocator<SBDVRouter>().config(),
        // home: const LoginScreen(),
        // home: const MainScreen(),
      ),
    );
  }
}
