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

    return AutoTabsRouter.pageView(
      routes: const [
        DashboardRoute(),
        UserRoute(),
      ],
      animatePageTransition: false,
      builder: (context, child, pageController) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          drawer: !isDesktop
              ? SizedBox(
                  width: 250,
                  child: SideMenuWidget(
                    tabsRouter: tabsRouter,
                  ),
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
                      child: SideMenuWidget(
                        tabsRouter: tabsRouter,
                      ),
                    ),
                  ),
                Expanded(
                  flex: 7,
                  child: child,
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
      },

      // child: Scaffold(
      //   drawer: !isDesktop
      //       ? const SizedBox(
      //           width: 250,
      //           child: SideMenuWidget(),
      //         )
      //       : null,
      //   endDrawer: Responsive.isMobile(context)
      //       ? SizedBox(
      //           width: MediaQuery.of(context).size.width * 0.8,
      //           child: const SummaryWidget(),
      //         )
      //       : null,
      //   body: SafeArea(
      //     child: Row(
      //       children: [
      //         if (isDesktop)
      //           Expanded(
      //             flex: 2,
      //             child: SizedBox(
      //               child: SideMenuWidget(),
      //             ),
      //           ),
      //         Expanded(
      //           flex: 7,
      //           child: DashboardWrapper(),
      //         ),
      //         if (isDesktop)
      //           Expanded(
      //             flex: 3,
      //             child: SummaryWidget(),
      //           ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
