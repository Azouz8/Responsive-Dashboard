import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xfffafafa),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
