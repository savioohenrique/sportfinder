import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/ui/promocode/widgets/promo_card/promo_card.dart';

class PromocodeListView extends StatelessWidget {
  const PromocodeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
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
                    "Códigos Promocionais",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 9.hm),
              ),
              const PromoCard("Cupom 01", "Este é um cupom para novos usuários"),
              const PromoCard("Cupom 02", "Cupom promocional"),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 10.wm),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [CustomButtonRedirect('Adicionar Código', '/promocode_redeem')],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
