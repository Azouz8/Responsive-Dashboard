import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice.dart';

class MiddlePart extends StatelessWidget {
  const MiddlePart({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            QuickInvoice(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
