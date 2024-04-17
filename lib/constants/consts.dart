import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/financial_item_model.dart';
import 'package:responsive_dashboard/utils/appImages.dart';

List<FinancialItemModel> items = [
  FinancialItemModel(
    color: const Color(0xff4eb7f2),
    iconBackgroundColor: const Color(0xff5fbef3),
    icon: SvgPicture.asset(Assets.imagesBalance),
    type: "Balance",
    date: "April 2022",
    moneyAmount: "20,129",
  ),
  FinancialItemModel(
    color: Colors.white,
    iconBackgroundColor: const Color(0xfffafafa),
    icon: SvgPicture.asset(Assets.imagesIncome),
    type: "Income",
    date: "April 2022",
    moneyAmount: "20,129",
  ),
  FinancialItemModel(
      color: Colors.white,
      iconBackgroundColor: const Color(0xfffafafa),
      icon: SvgPicture.asset(Assets.imagesExpenses),
      type: "Expenses",
      date: "April 2022",
      moneyAmount: "20,129"),
];
