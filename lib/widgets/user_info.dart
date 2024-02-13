import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/appImages.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  UserInfo({
    super.key,
  });
  final UserInfoModel userInfo = UserInfoModel(
      name: "Lekan Okeowo",
      email: 'Demo@gmail.com',
      image: SvgPicture.asset(Assets.imagesAvatar3));
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xfffafafa),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: userInfo.image,
        title: Text(
          userInfo.name,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfo.email,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
