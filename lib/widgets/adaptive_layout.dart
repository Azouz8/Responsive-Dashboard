import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/break_points.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= SizeConfig.desktopSize) {
          return desktopLayout(context);
        } else if (constraints.maxWidth >= SizeConfig.tabletSize) {
          return tabletLayout(context);
        } else {
          return mobileLayout(context);
        }
      },
    );
  }
}
