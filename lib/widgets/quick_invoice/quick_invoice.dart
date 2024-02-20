import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 16, top: 8),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        child: Column(
          children: [
            QuickInvoiceHeader(),
            LatestTransaction(),
            Divider(
              color: Color(0xffF1f1f1),
              height: 48,
            ),
            QuickInvoiceForm(),
          ],
        ),
      ),
    );
  }
}
