import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    required this.iconID,
    required this.onPressed,
    Key? key,
    this.tooltipText = '',
  }) : super(key: key);

  final IconData iconID;
  final String tooltipText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconID),
      tooltip: tooltipText,
      onPressed: onPressed,
    );
  }
}
