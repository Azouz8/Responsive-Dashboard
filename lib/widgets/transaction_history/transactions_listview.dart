import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_h_item_model.dart';
import 'package:responsive_dashboard/widgets/transaction_history/transaction_item.dart';

// ignore: must_be_immutable
class TransactionsListView extends StatelessWidget {
  TransactionsListView({super.key});
  List<TransactionHistoryItemModel> items = [
    const TransactionHistoryItemModel(
        type: "Cash Withdrawal",
        date: "13 Apr,2024",
        amount: "\$20,129",
        opType: false),
    const TransactionHistoryItemModel(
        type: "Landing Page Project",
        date: "13 Apr,2024 at 3:30 PM",
        amount: "\$2000",
        opType: true),
    const TransactionHistoryItemModel(
        type: "Juni Mobile App Project",
        date: "13 Apr,2024 at 3:50 PM",
        amount: "\$20,129",
        opType: true),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          TransactionItem(transactionHistoryItemModel: items[index]),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
