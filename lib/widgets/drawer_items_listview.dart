import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      image: AppImages.dashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: AppImages.transaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: AppImages.statistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: AppImages.wallet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: AppImages.investments,
      title: 'My Investments',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          setState(() {
            if(selectedIndex != index) {
              selectedIndex = index;
            }
          });
        },
        child: DrawerItem(
          drawerItemModel: items[index],
          isActive: selectedIndex == index ? true : false,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
