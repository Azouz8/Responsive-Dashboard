import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: CustomDrawer()),
        const Expanded(
          flex: 4,
          child: AllExpenses(),
        ),
        Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
            )),
      ],
    );
  }
}
