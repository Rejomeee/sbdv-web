import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sbdv_web/util/responsive.dart';

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
            if (context.router.current.name.toString() ==
                    'DashboardHomeRoute' ||
                !Responsive.isDesktop(context)) ...[
              const HeaderWidget(),
              const SizedBox(height: 18),
            ],
            Text(context.router.current.name.toString()),
            child,
          ],
        ),
      ),
    );
  }
}
