import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;

  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(
          context: context,
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xFF3EB7F2),
      ),
    );
  }
}
