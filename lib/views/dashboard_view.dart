import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(),
      appBar: MediaQuery.sizeOf(context).width < 996
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: Colors.black,
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
