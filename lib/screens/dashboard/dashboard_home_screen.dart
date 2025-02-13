import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../di/injection.dart';
import '../../routes/sbdv_router.gr.dart';
import '../../util/responsive.dart';
import '../../widgets/side_menu_widget.dart';
import '../../widgets/summary_widget.dart';
import 'cubit/initial/initial_cubit.dart';

@RoutePage()
class DashboardHomeScreen extends StatefulWidget {
  const DashboardHomeScreen({super.key});

  @override
  State<DashboardHomeScreen> createState() => _DashboardHomeScreenState();
}

class _DashboardHomeScreenState extends State<DashboardHomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    serviceLocator<InitialCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    print('DashboardHomeScreen');
    final isDesktop = Responsive.isDesktop(context);
    return MultiProvider(
      providers: [
        Provider<InitialCubit>(
          create: (_) => serviceLocator<InitialCubit>(),
        ),
      ],
      child: AutoTabsRouter(
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
      ),
    );
  }
}
