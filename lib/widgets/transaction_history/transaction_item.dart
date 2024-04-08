import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_h_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionHistoryItemModel,
  });
  final TransactionHistoryItemModel transactionHistoryItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFAFAFA),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryItemModel.type,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionHistoryItemModel.date,
          style: AppStyles.styleRegular14,
        ),
        trailing: Text(
          transactionHistoryItemModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
              color: transactionHistoryItemModel.opType
                  ? const Color(0xff7cd87a)
                  : const Color(0xfff3735e)),
        ),
      ),
    );
  }
}
