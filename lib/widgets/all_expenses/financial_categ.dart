import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/financial_item_model.dart';

class FinancialCategory extends StatelessWidget {
  const FinancialCategory({super.key, required this.financialItemModel});
  final FinancialItemModel financialItemModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                CircleAvatar(
                    radius: 25,
                    backgroundColor: financialItemModel.iconBackgroundColor,
                    child: financialItemModel.icon),
                // const Expanded(child: SizedBox()),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
            const Expanded(child: SizedBox()),
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
    );
  }
}
