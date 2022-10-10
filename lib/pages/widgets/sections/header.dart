import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../business_logic/controllers/menu_controller.dart';
import '../../../config/constants/responsive_breakpoints.dart';
import '../utils/bar_menu.dart';
import '../utils/logo.dart';
import '../utils/responsive_layout.dart';

class Header extends StatelessWidget {
  const Header({
    required this.autoScrollController,
    required this.menuController,
    Key? key,
  }) : super(key: key);

  final MenuController menuController;
  final AutoScrollController autoScrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      color: Theme.of(context).primaryColorDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          if (ResponsiveLayout.isMobileScreen(context))
            IconButton(
              icon: const Icon(FontAwesomeIcons.bars),
              onPressed: menuController.openCloseDrawer,
            ),
          const Logo(),
          const Spacer(),
          if (ResponsiveLayout.isDesktopScreen(context) || ResponsiveLayout.isTabletScreen(context))
            BarMenu(autoScrollController: autoScrollController)
        ],
      ),
    );
  }
}
