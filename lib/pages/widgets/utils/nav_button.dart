import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    required this.iconWidget,
    required this.onPressed,
    super.key,
    this.tooltipText = '',
  });

  final Widget iconWidget;
  final String tooltipText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: iconWidget,
      tooltip: tooltipText,
      onPressed: onPressed,
    );
  }
}
