import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const DashBoardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashBoardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
