import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/active_all_expenses_item.dart';

import 'inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return ActiveAllExpensesItem(
        itemModel: itemModel,
      );
    } else {
      return InActiveAllExpensesItem(
        itemModel: itemModel,
      );
    }
  }
}
