import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/financial_item_model.dart';
import 'package:responsive_dashboard/utils/appImages.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

List<FinancialItemModel> items = [
  FinancialItemModel(
    color: const Color(0xff4eb7f2),
    typeStyle: AppStyles.styleSemiBold18,
    dateStyle: AppStyles.styleRegular14.copyWith(color: Colors.white),
    moneyAmountStyle: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
    iconBackgroundColor: const Color(0xff5fbef3),
    icon: SvgPicture.asset(Assets.imagesBalance),
    type: "Balance",
    date: "April 2022",
    moneyAmount: "20,129",
  ),
  FinancialItemModel(
    color: Colors.white,
    typeStyle:
        AppStyles.styleSemiBold18.copyWith(color: const Color(0xff064060)),
    dateStyle: AppStyles.styleRegular14,
    moneyAmountStyle: AppStyles.styleSemiBold24,
    iconBackgroundColor: const Color(0xfffafafa),
    icon: SvgPicture.asset(Assets.imagesIncome),
    type: "Income",
    date: "April 2022",
    moneyAmount: "20,129",
  ),
  FinancialItemModel(
      color: Colors.white,
      typeStyle:
          AppStyles.styleSemiBold18.copyWith(color: const Color(0xff064060)),
      dateStyle: AppStyles.styleRegular14,
      moneyAmountStyle: AppStyles.styleSemiBold24,
      iconBackgroundColor: const Color(0xfffafafa),
      icon: SvgPicture.asset(Assets.imagesExpenses),
      type: "Expenses",
      date: "April 2022",
      moneyAmount: "20,129"),
];
