import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/widgets/income/income_item.dart';

class IncomeItemListView extends StatelessWidget {
  const IncomeItemListView({super.key});
  static const List<IncomeItemModel> items = [
    IncomeItemModel(
        color: Color(0xFF208BC7), details: "Design Service", persentage: "40%"),
    IncomeItemModel(
        color: Color(0xFF4DB7F2), details: "Design product", persentage: "25%"),
    IncomeItemModel(
        color: Color(0xFF064060),
        details: "product royality",
        persentage: "20%"),
    IncomeItemModel(
        color: Color(0xFFE2DECD), details: "Other", persentage: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          IncomeItem(incomeItemModel: items[index]),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
