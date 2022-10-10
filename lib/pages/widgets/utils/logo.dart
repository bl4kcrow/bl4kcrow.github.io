import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          '</AO>',
          textScaleFactor: 2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
