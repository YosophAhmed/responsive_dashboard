import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import 'drawer_items_listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: AppImages.avatar1,
            title: 'Yosoph Ahmed',
            subtitle: 'devyosoph@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
