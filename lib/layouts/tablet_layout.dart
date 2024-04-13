import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const Expanded(
          flex: 3,
          child: DashboardMobileLayout(),
        ),
      ],
    );
  }
}
