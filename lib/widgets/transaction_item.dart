import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(
            context: context,
          ),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular12(
            context: context,
          ).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold18(
            context: context,
          ).copyWith(
            color: transactionModel.isWithdraw
                ? const Color(0xFFF3735E)
                : const Color(
                    (0xFF7CD87A),
                  ),
          ),
        ),
      ),
    );
  }
}
