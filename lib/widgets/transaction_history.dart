import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_listview.dart';

import '../utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
