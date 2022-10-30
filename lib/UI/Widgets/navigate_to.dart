//================navigateTo===============================================

import 'package:flutter/material.dart';

class Navigation {
  static void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));

//================navigateAndFinish===============================================
  static void navigateAndFinish(context, widget) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
            (Route<dynamic> route) => false,
      );

//================navigateWithName===============================================
  static navigateWithName(context, String routeName) =>
      Navigator.pushNamed(context, routeName);
}
