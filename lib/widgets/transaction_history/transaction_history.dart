import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_history/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history/transactions_listview.dart';

// ignore: must_be_immutable
class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 0.5,
          ),
          const SizedBox(
            height: 8,
          ),
          const TransactionHistoryHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "13 April 2024",
              style: AppStyles.styleRegular14(context)
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          TransactionsListView(),
        ],
      ),
    );
  }
}
