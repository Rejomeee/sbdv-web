import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';

@RoutePage()
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('User Screen'),
            TextButton(
              onPressed: () {
                context.pushRoute(UserDetails());
              },
              child: Text('User Details'),
            ),
          ],
        ),
      ),
    );
  }
}
