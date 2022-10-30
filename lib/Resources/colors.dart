import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex('#FF5500');

  static Color blueLiner = HexColor.fromHex('#4FC7E4');
  static Color backgroundColor = HexColor.fromHex('#F6FCFE');
  static Color orangeColor = HexColor.fromHex('#FAA83A');
  static Color greyColor100 = HexColor.fromHex('#CFCFCF');
  static Color greyDarkColor= HexColor.fromHex('#909090');
  static Color hintOrangeColor = HexColor.fromHex('#DBC09C');
  static Color grayColor = HexColor.fromHex('#80C4C4C4');//opacity50=>>>80
  static Color blueTxtColor = HexColor.fromHex('#174B80');
  static Color blueTxtColorO40 = HexColor.fromHex('#66174B80');//opacity40=>>66
  static Color orangeTxtColor = HexColor.fromHex('#FAA83A');
  static Color blueAccentColor = HexColor.fromHex('#4FC7E4');
  static Color hintBlueAccentColor = HexColor.fromHex('#B4CCD1');
  static Color wight = HexColor.fromHex('#FFFFFF');
  static Color wight70 = HexColor.fromHex('#B3FFFFFF');
  static Color wight90 = HexColor.fromHex('#E6FFFFFF');
  static Color wight95 = HexColor.fromHex('#F2FFFFFF');
  static Color rate = HexColor.fromHex('#E6BB66');
  static Color tabBar = HexColor.fromHex('#3F4343');
  static Color cardPay1 = HexColor.fromHex('#E27BC1');
  static Color cardPay2 = HexColor.fromHex('#A280C1');
  static Color error = HexColor.fromHex('#e61f34');
  static Color blackColor = Colors.black;
}

//opacity40=>>66
//opacity50=>>80
//opacity70=>>B3
//opacity80=>>CC
extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString; // 8 char with 100% opacity
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
