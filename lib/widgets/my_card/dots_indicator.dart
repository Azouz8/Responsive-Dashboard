import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key, required this.currentPage,
  });
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
                padding: EdgeInsets.only(right: 8),
                child: CustomDotIndicator(isActive: index == currentPage),
              )),
    );
  }
}
