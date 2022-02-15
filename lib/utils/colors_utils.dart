import 'package:flutter/material.dart';

class ColorUtils {
  static Color hexParaColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static MaterialColor hexParaMaterialColor(String code) {
    String materialColor = "0xFF" + code.substring(1, 7);
    Color myColor = hexParaColor(code);
    Map<int, Color> colorCodes = {
      50: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .1),
      100: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .2),
      200: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .3),
      300: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .4),
      400: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .5),
      500: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .6),
      600: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .7),
      700: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .8),
      800: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, .9),
      900: Color.fromRGBO(myColor.red, myColor.green, myColor.blue, 1),
    };
    return MaterialColor(int.parse(materialColor), colorCodes);
  }
}
