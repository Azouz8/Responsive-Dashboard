import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttonText});
  final Color color;
  final Color textColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
