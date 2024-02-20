import 'package:flutter/material.dart';

// Mobile:400
// Tab:700
// Desktop:1000

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  if (responsiveFontSize >= fontSize * 0.8 &&
      responsiveFontSize <= fontSize * 1.2) {
    return responsiveFontSize;
  } else if (responsiveFontSize > fontSize * 1.2) {
    responsiveFontSize = fontSize * 1.2;
    return responsiveFontSize;
  } else {
    responsiveFontSize = fontSize * 0.8;
    return responsiveFontSize;
  }
  // responsiveFontSize.clamp(fontSize*0.8, fontSize*1.2);
  // the same as if else
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width >= 900) {
    return width / 1000;
  } else if (width >= 600) {
    return width / 700;
  } else {
    return width / 400;
  }
}
