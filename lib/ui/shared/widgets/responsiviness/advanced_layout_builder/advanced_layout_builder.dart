import 'package:flutter/material.dart';
import 'package:sport_finder/utils/ui_utils.dart';

class AdvancedLayoutBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const AdvancedLayoutBuilder({required Key key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, boxConstraints) {
        var sizingInformation = SizingInformation(
            deviceScreenType: getDeviceType(mediaQuery),
            screenSize: mediaQuery.size,
            localWidgetSize:
                Size(boxConstraints.maxWidth, boxConstraints.maxHeight));
        return builder(context, sizingInformation);
      },
    );
  }
}
