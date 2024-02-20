import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userInfo,
  });
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(right: 16, top: 20, bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xfffafafa),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
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
        ),
      ),
    );
  }
}
