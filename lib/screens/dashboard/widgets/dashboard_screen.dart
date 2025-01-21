import 'package:auto_route/auto_route.dart';
import 'package:sbdv_web/util/responsive.dart';
import 'package:sbdv_web/widgets/activity_details_card.dart';
import 'package:sbdv_web/widgets/bar_graph_widget.dart';
import 'package:sbdv_web/widgets/line_chart_card.dart';
import 'package:sbdv_web/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

import 'dashboard_base.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: DashboardBase(
            child: Column(
              children: [
                const SizedBox(height: 18),
                const ActivityDetailsCard(),
                const SizedBox(height: 18),
                const LineChartCard(),
                const SizedBox(height: 18),
                const BarGraphCard(),
                if (Responsive.isTablet(context)) ...[const SizedBox(height: 18), const SummaryWidget()],
              ],
            ),
          ),
        ),
        if (Responsive.isDesktop(context))
          Expanded(
            flex: 4,
            child: SummaryWidget(),
          )
      ],
    );
  }
}
