import 'package:flutter/material.dart';

import 'config/themes/custom_theme.dart';
import 'pages/ui/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      home: const ProfilePage(),
    );
  }
}
