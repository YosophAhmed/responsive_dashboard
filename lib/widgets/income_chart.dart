import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      getChartData(),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0.0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 25 : 20,
          showTitle: false,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 25 : 20,
          showTitle: false,
          value: 25,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 25 : 20,
          showTitle: false,
          value: 20,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 25 : 20,
          showTitle: false,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
