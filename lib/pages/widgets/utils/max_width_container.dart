import 'package:flutter/material.dart';

import '../../../config/constants/responsive_breakpoints.dart';

class MaxWidthContainer extends StatelessWidget {
  const MaxWidthContainer({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: child,
      ),
    );
  }
}
