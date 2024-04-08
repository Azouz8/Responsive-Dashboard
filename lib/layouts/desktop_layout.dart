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
        const Expanded(
          flex: 4,
          child: MiddlePart(),
        ),
        const Expanded(
          flex: 3,
          child: LastPart(),
        ),
      ],
    );
  }
}
