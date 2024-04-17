import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key, required this.data});

  final PieChartData data;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: PieChart(
        data,
      ),
    );
  }
}


