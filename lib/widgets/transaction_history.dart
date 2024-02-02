import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        TransactionHistoryListView(),
      ],
    );
  }
}
