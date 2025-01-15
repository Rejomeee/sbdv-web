import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sbdv_web/di/injection.dart';
import 'package:sbdv_web/routes/sbdv_router.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

@RoutePage()
class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                serviceLocator<SBDVRouter>().replace(LoginRoute());
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8 > 600 ? 600 : MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8 > 600 ? 600 : MediaQuery.of(context).size.height * 0.8,
                child: RiveAnimation.asset(
                  'assets/animations/cat_404_screen.riv',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
