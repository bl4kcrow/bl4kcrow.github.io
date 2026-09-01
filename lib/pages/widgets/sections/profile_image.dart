import 'package:flutter/material.dart';

import '../utils/responsive_layout.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveLayout.isMobileScreen(context)
          ? MediaQuery.of(context).size.height * 0.25
          : MediaQuery.of(context).size.width * 0.25,
      width: ResponsiveLayout.isMobileScreen(context)
          ? MediaQuery.of(context).size.height * 0.25
          : MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        border: Border.all(
          color: Colors.white, // Border color
          width: 3.0, // Border width
        ),
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/photos/ao_photo.jpg'),
          alignment: Alignment.bottomLeft,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
