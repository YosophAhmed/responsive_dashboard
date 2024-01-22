import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';

import 'active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.isActive,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return ActiveDrawerItem(
        drawerItemModel: drawerItemModel,
      );
    } else {
      return InActiveDrawerItem(
        drawerItemModel: drawerItemModel,
      );
    }
  }
}
