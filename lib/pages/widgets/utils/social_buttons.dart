import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'nav_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrlString(
      url,
    )) {
      await launchUrlString(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        NavButton(
          iconID: FontAwesomeIcons.linkedin,
          tooltipText: 'Linkedin',
          onPressed: () async {
            await _launchUrl(
              'https://www.linkedin.com/in/azael-ortega-in/',
            );
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.github,
          tooltipText: 'GitHub',
          onPressed: () async {
            await _launchUrl(
              'https://github.com/bl4kcrow',
            );
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.twitter,
          tooltipText: 'Twitter',
          onPressed: () async {
            await _launchUrl(
              'https://twitter.com/bl4kcrow',
            );
          },
        ),
        NavButton(
          iconID: FontAwesomeIcons.instagram,
          tooltipText: 'Instagram',
          onPressed: () async {
            await _launchUrl(
              'https://www.instagram.com/bl4kcrow/',
            );
          },
        ),
      ],
    );
  }
}
