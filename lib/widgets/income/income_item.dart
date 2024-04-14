import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
                shape: const OvalBorder(), color: incomeItemModel.color),
          ),
          Text(
            incomeItemModel.details,
            style: AppStyles.styleRegular16,
          ),
          const Spacer(),
          Text(
            incomeItemModel.persentage,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
