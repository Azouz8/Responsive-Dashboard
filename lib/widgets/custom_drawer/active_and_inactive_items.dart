import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ListTileInActiveItem extends StatelessWidget {
  const ListTileInActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: drawerItemModel.image,
        ),
        title: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}

class ListTileActiveItem extends StatelessWidget {
  const ListTileActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: drawerItemModel.image,
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
