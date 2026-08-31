import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          '</AO>',
          textScaler: TextScaler.linear(2.0),
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
