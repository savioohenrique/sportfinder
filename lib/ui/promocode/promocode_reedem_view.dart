import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/utils/widgets/text_input/text_input.dart';
import 'package:sport_finder/ui/promocode/widgets/promo_card/promo_card.dart';
import 'package:sport_finder/ui/shared/widgets/drawer/custom_drawer.dart';

class PromocodeRedeemView extends StatelessWidget {
  const PromocodeRedeemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
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
                    "Código Promocional",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 10.wm),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextInput("Resgate seu código"),
                    CustomButtonRedirect('Resgatar', '/promocode_list')
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
