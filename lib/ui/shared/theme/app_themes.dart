import 'package:flutter/material.dart';
import 'package:sport_finder/enums/app_theme.dart';
import 'package:sport_finder/utils/colors_utils.dart';

final appThemes = {
  AppTheme.GreyRed: ThemeData(
    primarySwatch: ColorUtils.hexParaMaterialColor("#DA5C5C"),
    primaryColor: ColorUtils.hexParaColor("#DA5C5C"),
    backgroundColor: ColorUtils.hexParaColor('#ececec'),
    accentColor: ColorUtils.hexParaColor("#474747"),
    canvasColor: const Color.fromRGBO(254, 255, 255, 1),
    fontFamily: 'Arial',
    textTheme: ThemeData.light().textTheme.copyWith(
          button: const TextStyle(fontSize: 20.0, color: Colors.white),
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline1: TextStyle(
            fontSize: 17,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w700,
            color: ColorUtils.hexParaColor("#3E4958"),
          ),
          headline2: TextStyle(
            fontSize: 19,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w700,
            color: ColorUtils.hexParaColor("#3E4958"),
          ),
          //NAV TITLE FONT
          headline3: TextStyle(
            fontSize: 21,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w700,
            color: ColorUtils.hexParaColor("#3E4958"),
          ),
          headline5: const TextStyle(
              fontSize: 14.6,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w600,
              color: Colors.black),
          headline6: TextStyle(
              fontSize: 13.6,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w500,
              color: Colors.grey[700]),
        ),
  ),
};
