import 'package:flutter/material.dart';

import '../../../config/constants/responsive_breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobileScreen,
    Key? key,
    this.desktopScreen,
    this.tabletScreen,
  }) : super(key: key);

  final Widget mobileScreen;
  final Widget? tabletScreen;
  final Widget? desktopScreen;

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < kTableBreakpoint;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= kTableBreakpoint &&
        MediaQuery.of(context).size.width < kDesktopBreakpoint;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= kDesktopBreakpoint;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxWidth < kTableBreakpoint) {
          return mobileScreen;
        } else if (dimens.maxWidth >= kTableBreakpoint && dimens.maxWidth < kDesktopBreakpoint) {
          return tabletScreen ?? mobileScreen;
        } else {
          return desktopScreen ?? mobileScreen;
        }
      },
    );
  }
}
