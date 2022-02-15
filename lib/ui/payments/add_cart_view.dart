import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/ui/shared/widgets/drawer/custom_drawer.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/utils/widgets/text_input/text_input.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
          ),
          onPressed: () {
            LocatorService.locator<NavigationService>().goBack();
          },
          backgroundColor: Colors.white,
        );
      }),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6.wm),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.hm),
              ),
              const Center(
                child: Text(
                  "Adicionar Cartão",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Número do Cartão"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Nome do titular"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("CVV"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Validade"),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.wm),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [CustomButtonRedirect('Adicionar', '/finding')],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
