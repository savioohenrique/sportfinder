import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/ui/shared/widgets/responsiviness/constrained_text.dart';
import 'package:sport_finder/utils/colors_utils.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

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
                    "Suporte",
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
                      text: 'Perguntas Frequentes',
                      textStyle: TextStyle(fontSize: 12.4 + .8),
                      boxFit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      maxHeight: 25,
                    ),
                    onTap: () => LocatorService.locator<NavigationService>()
                        .navigateTo('/finding'),
                  ),
                  ListTile(
                    title: const ConstrainedText(
                      text: 'Política de privacidade',
                      textStyle: TextStyle(fontSize: 12.4 + .8),
                      boxFit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      maxHeight: 25,
                    ),
                    onTap: () => LocatorService.locator<NavigationService>()
                        .navigateTo('/finding'),
                  ),
                  ListTile(
                    title: const ConstrainedText(
                      text: 'Entrar em contato',
                      textStyle: TextStyle(fontSize: 12.4 + .8),
                      boxFit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      maxHeight: 25,
                    ),
                    onTap: () => LocatorService.locator<NavigationService>()
                        .navigateTo('/finding'),
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

