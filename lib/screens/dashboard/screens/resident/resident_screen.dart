import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/dashboard_base.dart';

@RoutePage()
class ResidentScreen extends StatelessWidget {
  const ResidentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardBase(
      child: Center(
        child: Column(
          children: [
            Text('Resident Screen'),
          ],
        ),
      ),
    );
  }
}
