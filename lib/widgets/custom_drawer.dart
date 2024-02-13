import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/appImages.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_items.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
        image: SvgPicture.asset(Assets.imagesDashboard), title: "Dashboard"),
    DrawerItemModel(
        image: SvgPicture.asset(Assets.imagesMyTransctions),
        title: "My Transactions"),
    DrawerItemModel(
        image: SvgPicture.asset(Assets.imagesStatistics), title: "Statistics"),
    DrawerItemModel(
        image: SvgPicture.asset(Assets.imagesWalletAccount),
        title: "Wallet Account"),
    DrawerItemModel(
        image: SvgPicture.asset(Assets.imagesMyInvestments),
        title: "My Investment"),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: const Color(0xffFFFFFF),
      shape: const BeveledRectangleBorder(),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          UserInfo(),
          const SizedBox(
            height: 8,
          ),
          DrawerItemsList(items: drawerItems),
          const Expanded(child: SizedBox()),
          ListTileInActiveItem(
              drawerItemModel: DrawerItemModel(
                  image: SvgPicture.asset(Assets.imagesSettings),
                  title: "Settings")),
          ListTileInActiveItem(
              drawerItemModel: DrawerItemModel(
                  image: SvgPicture.asset(Assets.imagesLogout),
                  title: "Logout")),
          const SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
