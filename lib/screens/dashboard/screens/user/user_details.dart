import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details ito'),
        leading: AutoLeadingButton(),
      ),
      body: Center(
        child: Text('User Details'),
      ),
    );
  }
}
