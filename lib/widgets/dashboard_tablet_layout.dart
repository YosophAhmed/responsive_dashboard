import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

import 'dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: DashBoardMobileLayout(),
        ),
      ],
    );
  }
}
