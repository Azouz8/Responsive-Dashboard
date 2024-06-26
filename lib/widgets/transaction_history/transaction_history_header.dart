import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style:
              AppStyles.styleSemiBold20(context).copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          "See all",
          style:
              AppStyles.styleMedium16(context).copyWith(color: const Color(0xff4eb7f2)),
        ),
      ],
    );
  }
}
