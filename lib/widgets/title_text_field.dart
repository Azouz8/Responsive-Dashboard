import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField(
      {super.key, required this.text, required this.hint});
  final String text;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        )
      ],
    );
  }
}
