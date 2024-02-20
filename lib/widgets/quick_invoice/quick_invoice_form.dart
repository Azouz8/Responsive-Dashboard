import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTitleTextField(
                text: "Cutomer Name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                text: "Cutomer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTitleTextField(
                text: "Item Name",
                hint: "Type item name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                text: "Item Mount",
                hint: "USD",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: CustomButton(
                  color: Colors.white,
                  textColor: Color(0xff4EB7F2),
                  buttonText: "Add more details"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                  color: Color(0xff4EB7F2),
                  textColor: Colors.white,
                  buttonText: "Send Money"),
            ),
          ],
        ),
      ],
    );
  }
}
