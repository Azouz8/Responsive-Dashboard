import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income/income_chart.dart';
import 'package:responsive_dashboard/widgets/income/income_header.dart';
import 'package:responsive_dashboard/widgets/income/income_item_listview.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFFFFF),
      ),
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: const Column(
        children: [
          IncomeHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeItemListView()),
            ],
          ),
        ],
      ),
    );
  }
}
