import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses/range_options.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Text(
            "All Expenses",
            style: AppStyles.styleSemiBold20(context),
          ),
          const Expanded(child: SizedBox()),
          const RangeOptions(),
        ],
      ),
    );
  }
}
