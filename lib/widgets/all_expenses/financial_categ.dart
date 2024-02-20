import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/financial_item_model.dart';

class FinancialCategory extends StatelessWidget {
  const FinancialCategory({super.key, required this.financialItemModel});
  final FinancialItemModel financialItemModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    width: MediaQuery.sizeOf(context).width / 30,
                    decoration: ShapeDecoration(
                      shape: const CircleBorder(),
                      color: financialItemModel.iconBackgroundColor,
                    ),
                    child: financialItemModel.icon,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: MediaQuery.sizeOf(context).width / 60,
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
                  style: financialItemModel.typeStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  financialItemModel.date,
                  style: financialItemModel.dateStyle,
                ),
              ),
              Text(
                "\$ ${financialItemModel.moneyAmount}",
                style: financialItemModel.moneyAmountStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
