import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/consts.dart';
import 'package:responsive_dashboard/widgets/all_expenses/financial_categ.dart';

class FinancialCatList extends StatelessWidget {
  const FinancialCatList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FinancialCategory(
          financialItemModel: items[index],
        ),
        itemCount: items.length,
      ),
    );
  }
}
