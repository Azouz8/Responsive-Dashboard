import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  final List<DrawerItemModel> items;
  const DrawerItemsList({super.key, required this.items});

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: widget.items[index],
            isActive: activeIndex == index,
          )),
      itemCount: widget.items.length,
    );
  }
}
