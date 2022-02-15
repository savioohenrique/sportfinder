import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/ui/shared/widgets/responsiviness/constrained_text.dart';
import 'package:sport_finder/utils/colors_utils.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/ui/promocode/widgets/promo_card/promo_card.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key}) : super(key: key);

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
            LocatorService.locator<NavigationService>().navigateTo("/finding");
          },
          backgroundColor: Colors.white,
        );
      }),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: ColorUtils.hexParaMaterialColor("#DA5C5C"),
                child: const Center(
                  child: Text(
                    "Escolha a forma de pagamento",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 280,
            left: 50,
            right: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const ConstrainedText(
                      text: 'Adicionar Cartão',
                      textStyle: TextStyle(fontSize: 12.4 + .8),
                      boxFit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      maxHeight: 25,
                    ),
                    onTap: () => LocatorService.locator<NavigationService>()
                        .navigateTo('/add_card'),
                  ),
                  const ListTile(
                    title: ConstrainedText(
                      text: 'Cartão 01',
                      textStyle: TextStyle(fontSize: 12.4 + .8),
                      boxFit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      maxHeight: 25,
                    ),
                    // onTap: () => LocatorService.locator<NavigationService>()
                    //     .navigateTo('/add_card'),
                  ),
                  const ListTile(
                    title: ConstrainedText(
                      text: 'Cartão 02',
                      textStyle: TextStyle(fontSize: 12.4 + .8),
                      boxFit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      maxHeight: 25,
                    ),
                    // onTap: () => LocatorService.locator<NavigationService>()
                    //     .navigateTo('/add_card'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
