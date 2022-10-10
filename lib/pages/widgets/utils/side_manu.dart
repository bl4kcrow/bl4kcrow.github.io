import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../business_logic/controllers/menu_controller.dart';
import '../../../config/constants/responsive_breakpoints.dart';
import 'logo.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    required this.autoScrollController,
    Key? key,
  }) : super(key: key);

  final MenuController _menuController = MenuController();
  final AutoScrollController autoScrollController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 4.0,
              ),
              child: Logo(),
            ),
          ),
          ...List.generate(
            _menuController.menuItems.length,
            (index) => ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              title: Text(
                _menuController.menuItems[index],
              ),
              onTap: () => autoScrollController.scrollToIndex(index),
            ),
          ),
        ],
      ),
    );
  }
}
