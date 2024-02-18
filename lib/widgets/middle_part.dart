import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice.dart';

class MiddlePart extends StatelessWidget {
  const MiddlePart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: AllExpenses(),
          ),
          Expanded(
            flex: 3,
            child: QuickInvoice(),
          ),
        ],
      ),
    );
  }
}
