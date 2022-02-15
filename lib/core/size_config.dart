import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double _blockSizeHorizontal;
  static late double _blockSizeVertical;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  //Scalable values
  static late double textMultiplier;
  static late double imageSizeMultiplier;
  static late double heightMultiplier;
  static late double widthMultiplier;
  void init(BuildContext context, Orientation orientation) {
    _mediaQueryData = MediaQuery.of(context);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    _blockSizeHorizontal = screenWidth / 100;
    _blockSizeVertical = screenHeight / 100;

    //Remove Paddings automaticos do phone dentro dos blocos
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;

    if (orientation == Orientation.portrait) {
      textMultiplier = (_blockSizeHorizontal / 3);
      imageSizeMultiplier = _blockSizeHorizontal / 100;
      heightMultiplier = _blockSizeVertical;
      widthMultiplier = _blockSizeHorizontal;
    } else {
      textMultiplier = (_blockSizeVertical / 3);
      imageSizeMultiplier = _blockSizeVertical / 100;
      heightMultiplier = _blockSizeHorizontal;
      widthMultiplier = _blockSizeVertical;
    }
  }
}
