import 'package:auto_route/auto_route.dart';
import 'package:sbdv_web/util/responsive.dart';
import 'package:sbdv_web/widgets/activity_details_card.dart';
import 'package:sbdv_web/widgets/bar_graph_widget.dart';
import 'package:sbdv_web/widgets/header_widget.dart';
import 'package:sbdv_web/widgets/line_chart_card.dart';
import 'package:sbdv_web/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(height: 18),
            const BarGraphCard(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
