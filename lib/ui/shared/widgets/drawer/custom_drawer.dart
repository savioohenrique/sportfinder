import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/ui/shared/widgets/responsiviness/constrained_text.dart';
import 'package:sport_finder/utils/colors_utils.dart';
import 'package:flutter/gestures.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  // AuthStore _authStore;

  @override
  void initState() {
    // _authStore = locator.get<AuthStore>();
    super.initState();
  }

  logout() {
    LocatorService.locator<NavigationService>().navigateTo('/sign_in');
  }

  @override
  Widget build(BuildContext context) {
    final tileTitleSp = 12.4.sp;
    final tileLegendaSp = 12.sp;
    const userName = "teste";
    const userEmail = "teste@hotmail.com";
    return Drawer(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture:
                      SvgPicture.asset('assets/photo_user.svg'),
                  accountName: ConstrainedText(
                    text: userName,
                    textStyle: TextStyle(fontSize: 13.5.sp),
                    maxHeight: 25,
                  ),
                  accountEmail: ConstrainedText(
                    text: userEmail,
                    textStyle: TextStyle(fontSize: 12.sp),
                    maxHeight: 25,
                  ),
                ),
                ListTile(
                  title: ConstrainedText(
                    text: 'EVENTOS',
                    textStyle: TextStyle(fontSize: tileTitleSp + .8),
                    boxFit: BoxFit.scaleDown,
                    alignment: Alignment.bottomLeft,
                    maxHeight: 25,
                  ),
                  onTap: () => LocatorService.locator<NavigationService>()
                      .navigateTo('/event_list'),
                ),
                ListTile(
                  title: ConstrainedText(
                    text: 'PAGAMENTOS',
                    textStyle: TextStyle(fontSize: tileTitleSp + .8),
                    boxFit: BoxFit.scaleDown,
                    alignment: Alignment.bottomLeft,
                    maxHeight: 25,
                  ),
                  onTap: () => LocatorService.locator<NavigationService>()
                      .navigateTo('/payment'),
                ),
                ListTile(
                  title: ConstrainedText(
                    text: 'CUPONS',
                    textStyle: TextStyle(fontSize: tileTitleSp + .8),
                    boxFit: BoxFit.scaleDown,
                    alignment: Alignment.bottomLeft,
                    maxHeight: 25,
                  ),
                  onTap: () => LocatorService.locator<NavigationService>()
                      .navigateTo('/promocode_list'),
                ),
                ListTile(
                  title: ConstrainedText(
                    text: 'SUPORTE',
                    textStyle: TextStyle(fontSize: tileTitleSp + .8),
                    boxFit: BoxFit.scaleDown,
                    alignment: Alignment.bottomLeft,
                    maxHeight: 25,
                  ),
                  onTap: () => LocatorService.locator<NavigationService>()
                      .navigateTo('/support'),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.hm, left: 1.5.hm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Sair",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w400,
                              color: ColorUtils.hexParaColor("#97ADB6"),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  LocatorService.locator<NavigationService>()
                                      .navigateTo('/sign_in'),
                          ),
                        ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
