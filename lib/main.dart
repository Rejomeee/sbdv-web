import 'screens/login/cubit/login/login_cubit.dart';

import 'const/constant.dart';
import 'package:flutter/material.dart';
import 'screens/login/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginCubit>(create: (_) => LoginCubit()),
      ],
      child: MaterialApp(
        title: 'Dashborad UIxx',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          brightness: Brightness.dark,
        ),
        home: const LoginScreen(),
        // home: const MainScreen(),
      ),
    );
  }
}
