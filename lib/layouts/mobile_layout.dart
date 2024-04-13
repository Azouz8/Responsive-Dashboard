import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/last_part.dart';
import 'package:responsive_dashboard/widgets/middle_part.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                right: 16,
              ),
              child: const MiddlePart()),
          const LastPart(),
        ],
      ),
    );
  }
}
