import 'package:auto_route/auto_route.dart';
import 'package:sbdv_web/di/injection.dart';
import 'package:sbdv_web/screens/login/cubit/auth/auth_cubit.dart';
import 'package:sbdv_web/util/responsive.dart';
import 'package:sbdv_web/widgets/dashboard_widget.dart';
import 'package:sbdv_web/widgets/side_menu_widget.dart';
import 'package:sbdv_web/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  serviceLocator<AuthCubit>().logout();
                },
                child: Text('Logout')),
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),
            Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            if (isDesktop)
              Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
