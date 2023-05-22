import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../business_logic/controllers/page_menu_controller.dart';
import '../../../config/constants/responsive_breakpoints.dart';

class BarMenu extends StatelessWidget {
  BarMenu({
    required this.autoScrollController,
    Key? key,
  }) : super(key: key);

  final PageMenuController _menuController = PageMenuController();
  final AutoScrollController autoScrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        _menuController.menuItems.length,
        (index) => BarMenuItem(
          title: _menuController.menuItems[index],
          press: () => autoScrollController.scrollToIndex(index),
        ),
      ),
    );
  }
}

class BarMenuItem extends StatefulWidget {
  const BarMenuItem({
    required this.title,
    required this.press,
    Key? key,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  State<BarMenuItem> createState() => _BarMenuItemState();
}

class _BarMenuItemState extends State<BarMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (_isHover) {
      return Theme.of(context).colorScheme.secondary;
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      onTap: widget.press,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}
