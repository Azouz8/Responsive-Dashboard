import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FinancialItemModel {
  
  final Color color;
  final Color iconBackgroundColor;
  final SvgPicture icon;
  final String type;
  final String date;
  final String moneyAmount;
  

  const FinancialItemModel({
    required this.color,
    required this.iconBackgroundColor,
    required this.icon,
    required this.type,
    required this.date,
    required this.moneyAmount,

  });
}
