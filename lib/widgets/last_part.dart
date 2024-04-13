import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income/income.dart';
import 'package:responsive_dashboard/widgets/my_card/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history/transaction_history.dart';

class LastPart extends StatelessWidget {
  const LastPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyCardsSection(),
            TransactionHistory(),
            Income(),
          ],
        ),
      ),
    );
  }
}
