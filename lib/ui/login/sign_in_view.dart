import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/utils/widgets/text_input/text_input.dart';
import 'package:sport_finder/utils/colors_utils.dart';
import 'package:flutter/gestures.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Builder(builder: (context) {
          return SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6.wm),
              child: Column(
                children: [
                  // Center(
                  //   child: Text(
                  //     "Login",
                  //     style: Theme.of(context).textTheme.headline3,
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 9.hm),
                  ),
                  SvgPicture.asset('assets/nav_text.svg'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.hm),
                  ),
                  CustomTextInput("Email"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.hm),
                  ),
                  CustomTextInput("Senha"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.hm),
                  ),
                  CustomButtonRedirect('Entrar', '/finding'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.hm),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "OU CADASTRE-SE",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.hm),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.wm),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset('assets/ic_facebook.svg'),
                        SvgPicture.asset('assets/ic_twitter.svg'),
                        SvgPicture.asset('assets/ic_gmail.svg'),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(bottom: 10.wm),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Ainda não tem uma conta?",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w400,
                                color: ColorUtils.hexParaColor("#97ADB6"),
                              ),
                            ),
                            TextSpan(
                                text: " Cadastre-se",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.w400,
                                  color: ColorUtils.hexParaColor("#1152FD"),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap =() => LocatorService.locator<NavigationService>()
                                      .navigateTo('/sign_up'),),
                          ]),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          );
        }));
  }
}
