import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sbdv_web/util/responsive.dart';

import '../../../widgets/header_widget.dart';

class DashboardBase extends StatelessWidget {
  final Widget child;
  final bool singleChildScrollViewEnable;
  const DashboardBase({
    super.key,
    required this.child,
    this.singleChildScrollViewEnable = true,
  });

  @override
  Widget build(BuildContext context) {
    if (singleChildScrollViewEnable) {
      return SingleChildScrollView(
        child: _buildBody(context),
      );
    } else {
      return _buildBody(context);
    }
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          if (context.router.current.name.toString() == 'DashboardHomeRoute' ||
              !Responsive.isDesktop(context)) ...[
            const HeaderWidget(),
            const SizedBox(height: 18),
          ],
          child,
        ],
      ),
    );
  }
}
