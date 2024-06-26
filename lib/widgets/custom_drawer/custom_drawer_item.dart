import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/custom_drawer/active_and_inactive_items.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ListTileActiveItem(drawerItemModel: drawerItemModel)
        : ListTileInActiveItem(drawerItemModel: drawerItemModel);
  }
}

