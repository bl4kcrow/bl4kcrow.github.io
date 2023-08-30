import 'package:flutter/material.dart';

class PageMenuController {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  List<String> get menuItems => [
        'Home',
        'Experience',
        'Personal Apps Projects',
        'Contact',
      ];

  void openCloseDrawer() {
    if (_scaffoldKey.currentState != null &&
        _scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState?.openEndDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }
}
