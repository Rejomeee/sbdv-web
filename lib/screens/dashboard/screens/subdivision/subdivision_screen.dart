import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SubdivisionScreen extends StatelessWidget {
  const SubdivisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Subdivision Screen'),
          ],
        ),
      ),
    );
  }
}
