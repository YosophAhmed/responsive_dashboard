import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

import '../utils/app_images.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      image: AppImages.balance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,128',
    ),
    const AllExpensesItemModel(
      image: AppImages.income,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,128',
    ),
    const AllExpensesItemModel(
      image: AppImages.expenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,128',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: InkWell(
              onTap: () {
                updateIndex(
                  index: index,
                );
              },
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void updateIndex({
    required int index,
  }) {
    setState(() {
      selectedIndex = index;
    });
  }
}
