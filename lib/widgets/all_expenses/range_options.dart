import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Text(
              "Monthly",
              style: AppStyles.styleMedium16,
            ),
            const SizedBox(
              width: 14,
            ),
            Transform.rotate(
              angle: 4.712,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xff064061),
              ),
            ),
          ],
        ));
  }
}