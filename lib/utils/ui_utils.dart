import 'package:flutter/cupertino.dart';
import '../enums/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {required this.deviceScreenType, required this.screenSize, required this.localWidgetSize});

  @override
  String toString() {
    return 'DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}
