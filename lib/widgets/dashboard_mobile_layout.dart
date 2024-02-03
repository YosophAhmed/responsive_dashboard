import 'package:flutter/material.dart';

import 'all_expenses_quick_invoice_section.dart';
import 'cards_transaction_section.dart';


class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          children: [
            AllExpensesQuickInvoiceSection(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 24.0,
              ),
              child: CardsTransactionSection(),
            ),
          ],
        ),
      ),
    );
  }
}
