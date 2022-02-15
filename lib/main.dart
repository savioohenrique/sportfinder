import 'package:flutter/material.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/enums/app_theme.dart';
import 'package:sport_finder/ui/login/sign_in_view.dart';
import 'package:sport_finder/ui/shared/theme/app_themes.dart';

import 'core/routing/navigator.dart';
import 'core/routing/route_generator.dart';
import 'core/size_config.dart';

void main() {
  LocatorService.setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GlobalKey<NavigatorState> navigationService;

  @override
  void initState() {
    navigationService =
        LocatorService.locator<NavigationService>().navigatorKey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport Finder',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigationService,
      theme: appThemes[AppTheme.GreyRed],
      home: OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(context, orientation);
        return const SignInView();
      }),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
