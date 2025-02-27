import 'package:auto_route/auto_route.dart';
import 'package:sbdv_web/routes/sbdv_router.gr.dart';
import 'package:sbdv_web/util/responsive.dart';
import 'package:sbdv_web/widgets/side_menu_widget.dart';
import 'package:sbdv_web/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardHomeScreen extends StatelessWidget {
  const DashboardHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return AutoTabsRouter(
      routes: const [
        DashboardRoute(),
        AnnouncementRoute(),
        ResidentRoute(),
        SubdivisionRoute(),
        RoleRoute(),
        LogRoute(),
        UserRoute(),
      ],
      duration: Duration.zero,
      builder: (context, child) {
        return Scaffold(
          drawer: !isDesktop
              ? SizedBox(
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
                if (isDesktop)
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: SideMenuWidget(),
                    ),
                  ),
                Expanded(
                  flex: 7,
                  child: child,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
