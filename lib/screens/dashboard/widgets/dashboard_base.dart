import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../widgets/header_widget.dart';

class DashboardBase extends StatelessWidget {
  final Widget child;
  const DashboardBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const HeaderWidget(),
            const SizedBox(height: 18),
            Text(context.router.current.name.toString()),
            child,
          ],
        ),
      ),
    );
  }
}
