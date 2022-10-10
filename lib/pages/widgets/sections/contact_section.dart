import 'package:flutter/material.dart';

import '../../../config/constants/responsive_breakpoints.dart';
import '../utils/social_buttons.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Contact me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          "I'm always open to discuss your projects and talk about new things, never stopping to learn.",
          softWrap: true,
          style: TextStyle(
            color: Theme.of(context).shadowColor,
          ),
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        const SizedBox(
          height: 30.0,
          child: SocialButtons(),
        ),
      ],
    );
  }
}
