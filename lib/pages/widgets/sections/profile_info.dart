import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Hello! my name is',
          textScaleFactor: 2,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const Text(
          'Azael\nOrtega',
          textScaleFactor: 5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'I like to develop apps for mobile and web using mainly '
          "Flutter - Google's open source UI toolkit.\n"
          'I\'m also a SAP Abap Developer, with experience designing and '
          'programming SAP solutions for different industries & countries.',
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Theme.of(context).shadowColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SvgPicture.asset('images/logos/flutter-logo.svg'),
            SvgPicture.asset('images/logos/sap-logo.svg'),
          ],
        )
      ],
    );
  }
}
