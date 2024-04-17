import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/financial_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class FinancialCategory extends StatelessWidget {
  const FinancialCategory({super.key, required this.financialItemModel});
  final FinancialItemModel financialItemModel;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: IntrinsicHeight(
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
              color: financialItemModel.color,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      shape: const CircleBorder(),
                      color: financialItemModel.iconBackgroundColor,
                    ),
                    child: financialItemModel.icon,
                  ),
                  const SizedBox(
                    width: 101,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  financialItemModel.type,
                  style: financialItemModel.color == const Color(0xff4eb7f2)
                      ? AppStyles.styleSemiBold18(context)
                      : AppStyles.styleSemiBold18(context)
                          .copyWith(color: const Color(0xff064060)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  financialItemModel.date,
                  style: financialItemModel.color == const Color(0xff4eb7f2)
                      ? AppStyles.styleRegular14(context)
                          .copyWith(color: Colors.white)
                      : AppStyles.styleRegular14(context),
                ),
              ),
              Text(
                "\$ ${financialItemModel.moneyAmount}",
                style: financialItemModel.color == const Color(0xff4eb7f2)
                    ? AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold24(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
