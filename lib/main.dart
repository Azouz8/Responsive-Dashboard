import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

// import 'package:device_preview/device_preview.dart';

void main() => runApp(
      const ResponsiveDashBoard(),
    );

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home: DashBoardView(),
    );
  }
}
