import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

import 'all_expenses_header.dart';
import 'all_expenses_items_listview.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpenseHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
