import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/utils/widgets/text_input/text_input.dart';
import 'package:sport_finder/utils/colors_utils.dart';
import 'package:flutter/gestures.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
                  Center(
                    child: Text(
                      "Criar Conta",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 9.hm),
                  ),
                  SvgPicture.asset('assets/nav_text.svg'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.hm),
                  ),
                  CustomTextInput("Nome"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.hm),
                  ),
                  CustomTextInput("Email"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.hm),
                  ),
                  CustomTextInput("Senha"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.hm),
                  ),
                  CustomButtonRedirect('Cadastrar', '/sign_in'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.hm),
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
                                  text: "Já possui uma conta? ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.w400,
                                    color: ColorUtils.hexParaColor("#97ADB6"),
                                  ),
                                ),
                                TextSpan(
                                  text: " Login",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.w400,
                                    color: ColorUtils.hexParaColor("#1152FD"),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =() => LocatorService.locator<NavigationService>()
                                        .navigateTo('/sign_in'),),
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
