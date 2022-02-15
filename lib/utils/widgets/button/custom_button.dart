import 'package:flutter/material.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/colors_utils.dart';

class CustomButtonRedirect extends StatelessWidget {
  String _name;
  String _locate;
  CustomButtonRedirect(this._name,this._locate);
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MaterialButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        elevation: 5.0,
        minWidth: 1.w,
        height: 8.hm,
        color: ColorUtils.hexParaColor("#DA5C5C"),
        child: Text(_name, style: Theme.of(context).textTheme.button),
        onPressed: () {
          LocatorService.locator<NavigationService>().navigateTo(_locate);
        },
      );
    });
  }
}
