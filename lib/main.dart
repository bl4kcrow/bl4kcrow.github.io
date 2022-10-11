import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'config/themes/custom_theme.dart';
import 'config/utils/custom_scroll_behavior.dart';
import 'pages/ui/profile_page.dart';

void main() {
  runApp(const MyApp());
  setUrlStrategy(PathUrlStrategy());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
      scrollBehavior: CustomScrollBehavior(),
      theme: CustomTheme.theme,
      title: 'Professional Profile - Azael Ortega',
    );
  }
}
