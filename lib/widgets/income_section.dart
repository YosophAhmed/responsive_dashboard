import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

import 'income_chart.dart';
import 'income_details.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: IncomeChart(),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 2,
                  child: IncomeDetails(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
