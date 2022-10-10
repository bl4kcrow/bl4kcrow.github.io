import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        copyRightText(context),
      ],
    );
  }

  Widget copyRightText(BuildContext context) => Text(
        '©️bl4kcrow ${DateTime.now().year}',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).shadowColor,
        ),
      );
}
