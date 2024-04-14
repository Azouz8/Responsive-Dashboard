import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

int activeIndex = -1;

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        sections: [
          PieChartSectionData(
              value: 40,
              color: const Color(0xFF208BC7),
              showTitle: false,
              radius: activeIndex == 0 ? 40 : 30),
          PieChartSectionData(
              value: 25,
              color: const Color(0xFF4DB7F2),
              showTitle: false,
              radius: activeIndex == 1 ? 40 : 30),
          PieChartSectionData(
              value: 20,
              color: const Color(0xFF064060),
              showTitle: false,
              radius: activeIndex == 2 ? 40 : 30),
          PieChartSectionData(
              value: 22,
              color: const Color(0xFFE2DECD),
              showTitle: false,
              radius: activeIndex == 3 ? 40 : 30),
        ],
        sectionsSpace: 0,
        // centerSpaceRadius: 30,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1!.touchedSection!.touchedSectionIndex;
            setState(() {});
          },
        ));
  }
}
