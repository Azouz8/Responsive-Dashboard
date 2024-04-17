import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Text(
            "Income",
            style: AppStyles.styleSemiBold20(context),
          ),
          const Expanded(child: SizedBox()),
          const RangeOptions(),
        ],
      ),
    );
  }
}
