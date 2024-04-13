import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/middle_part.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/last_part.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 4,
          child: Container(
              margin: const EdgeInsets.only(top: 16),
              child: const MiddlePart()),
        ),
        Expanded(
          flex: 3,
          child: Container(
              margin: const EdgeInsets.only(top: 16), child: const LastPart()),
        ),
      ],
    );
  }
}
