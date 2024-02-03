import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 apr, 2022',
      amount: r'$20,129',
      isWithdraw: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 apr, 2022 at 3:30PM',
      amount: r'$2,000',
      isWithdraw: false,
    ),
    TransactionModel(
      title: 'Mobile App project',
      date: '13 apr, 2022 at 3:30PM',
      amount: r'$20,129',
      isWithdraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionItem(
              transactionModel: e,
            ),
          )
          .toList(),
    );
  }
}
