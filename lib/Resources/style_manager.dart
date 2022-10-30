import 'package:flutter/cupertino.dart';

import 'main_imports.dart';
import 'font_manager.dart';

class StyleManager {
  static TextStyle mainText(context, color, {fontWeight}) {
    return TextStyle(
        fontSize: FontSize.textS18(context),
        color: color,
        fontWeight: fontWeight);
  }

  static TextStyle mainText20(context, color, {fontWeight}) {
    return TextStyle(
        fontSize: FontSize.textS20(context),
        color: color,
        fontWeight: fontWeight);
  }

  static TextStyle mainText14(context, color,{fontWeight}) {
    return TextStyle(
        fontSize: FontSize.textS14(context),
        color: color,
        fontWeight:fontWeight?? FontWeight.w700);
  }
  static TextStyle mainText16(context, color,{fontWeight}) {
    return TextStyle(
        fontSize: FontSize.textS16(context),
        color: color,
        fontWeight:fontWeight?? FontWeight.w700);
  }
  static TextStyle headerText(context, color) {
    return TextStyle(
        color: color,
        fontSize: FontSize.textHeader(context),
        fontWeight: FontWeight.w700);
  }

  static Theme selectDateTime(context,child)=>Theme(
    data:
    Theme.of(context).copyWith(
      colorScheme: ColorScheme.light(
        primary: ColorManager.primaryColor, // <-- SEE HERE
        onPrimary: Colors.white, // <-- SEE HERE
        onSurface: ColorManager.grayColor, // <-- SEE HERE
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12,),
              primary: Colors.white, // color of button's letters
              backgroundColor: ColorManager.primaryColor,
              // Background color
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)))),
    ),
    child: child!,
  );
}
