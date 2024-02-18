import 'package:flutter/material.dart';
import 'package:responsive_dashboard/consts/consts.dart';
import 'package:responsive_dashboard/widgets/all_expenses/expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses/financial_categ.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 8, top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const ExpensesHeader(),
          Expanded(
            child: Row(
              children: [
                FinancialCategory(financialItemModel: items[0]),
                FinancialCategory(financialItemModel: items[1]),
                FinancialCategory(financialItemModel: items[2]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}