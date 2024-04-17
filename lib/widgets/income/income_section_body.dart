import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/break_points.dart';
import 'package:responsive_dashboard/widgets/income/income_chart.dart';
import 'package:responsive_dashboard/widgets/income/income_item_listview.dart';

class IncomeSectionBody extends StatefulWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  State<IncomeSectionBody> createState() => _IncomeSectionBodyState();
}

class _IncomeSectionBodyState extends State<IncomeSectionBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktopSize && width <= 1460
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 3,
                child: IncomeChart(
                  data: chartData(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24, top: 16),
                child: IncomeItemListView(),
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: IncomeChart(
                    data: chartData(),
                  )),
              const Expanded(
                flex: 3,
                child: IncomeItemListView(),
              ),
            ],
          );
  }

  int activeIndex = -1;

  PieChartData chartData() {
    return PieChartData(
        sections: [
          PieChartSectionData(
              value: 40,
              color: const Color(0xFF208BC7),
              showTitle: false,
              radius: activeIndex == 0 ? 40 : 30),
          PieChartSectionData(
              value: 25,
              color: const Color(0xFF4DB7F2),
              showTitle: false,
              radius: activeIndex == 1 ? 40 : 30),
          PieChartSectionData(
              value: 20,
              color: const Color(0xFF064060),
              showTitle: false,
              radius: activeIndex == 2 ? 40 : 30),
          PieChartSectionData(
              value: 22,
              color: const Color(0xFFE2DECD),
              showTitle: false,
              radius: activeIndex == 3 ? 40 : 30),
        ],
        sectionsSpace: 0,
        // centerSpaceRadius: 30,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1!.touchedSection!.touchedSectionIndex;
            setState(() {});
          },
        ));
  }
}
