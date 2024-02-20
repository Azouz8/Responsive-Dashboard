import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/appImages.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/user_info.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});
  static var items = [
    UserInfoModel(
        image: SvgPicture.asset(Assets.imagesAvatar1),
        name: "Madrani Andi",
        email: "MadraniAndi20@gmail.com"),
    UserInfoModel(
        image: SvgPicture.asset(Assets.imagesAvatar2),
        name: "Madrani Andi",
        email: "MadraniAndi20@gmail.com"),
    UserInfoModel(
        image: SvgPicture.asset(Assets.imagesAvatar3),
        name: "Madrani Andi",
        email: "MadraniAndi20@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfo(userInfo: e)))
            .toList(),
      ),
    );
  }
}
