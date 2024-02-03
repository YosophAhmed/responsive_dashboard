import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';

import 'all_expenses_quick_invoice_section.dart';
import 'cards_transaction_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: AllExpensesQuickInvoiceSection(),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          CardsTransactionSection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(
                            child: IncomeSection(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
