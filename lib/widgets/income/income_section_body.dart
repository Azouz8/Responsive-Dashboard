import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/break_points.dart';
import 'package:responsive_dashboard/widgets/income/income_chart.dart';
import 'package:responsive_dashboard/widgets/income/income_item_listview.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    log(MediaQuery.sizeOf(context).width.toString());
    return width >= SizeConfig.desktopSize && width <= 1460
        ? Container()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeItemListView()),
            ],
          );
  }
}
