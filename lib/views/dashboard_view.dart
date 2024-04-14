import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/break_points.dart';
import 'package:responsive_dashboard/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/layouts/tablet_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/custom_drawer.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      drawerEnableOpenDragGesture: false,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tabletSize
          ? Drawer(
              child: CustomDrawer(),
            )
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.desktopSize
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: const Color(0xfff7f9fa),
              scrolledUnderElevation: 0,
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
