import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/appImages.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/active_and_inactive_items.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/user_info.dart';

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
    return Container(
      decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
      child: CustomScrollView(
        slivers: [
      
          SliverToBoxAdapter(child: UserInfo()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsList(items: drawerItems),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
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
          )
        ],
      ),
    );
  }
}
