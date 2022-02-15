import 'package:sport_finder/core/size_config.dart';

extension SizeConfigExt on num {
  /// Calculates the height depending on the device's screen size
  /// (Dynamic to portrait or landscape)
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => this * SizeConfig.screenHeight;

  /// Calculates the width depending on the device's screen size
  ///((Dynamic to portrait or landscape)
  /// Eg: 20.w -> will take 20% of the screen's width
  double get w => this * SizeConfig.screenWidth;

  /// Calculates the height depending on the device's screen size
  /// (Static to portrait)
  /// Eg: 20.h -> will take 20% of the screen's height
  double get ph => this * SizeConfig.heightMultiplier * 100;

  /// Calculates the width depending on the device's screen size
  /// (Static to portrait)
  /// Eg: 20.w -> will take 20% of the screen's width
  double get pw => this * SizeConfig.widthMultiplier * 100;

  // BLOCKS
  double get hm => this * SizeConfig.heightMultiplier;

  double get wm => this * SizeConfig.widthMultiplier;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => this * SizeConfig.textMultiplier;

  /// Calculates the si (Scalable Image) depending on the device's screen size
  double get si => this * SizeConfig.imageSizeMultiplier;
}
