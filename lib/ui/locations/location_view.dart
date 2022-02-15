import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/ui/events/widgets/event_card.dart';


class LocationView extends StatelessWidget {
  final String _nome;

  const LocationView(this._nome,{Key? key}) : super(key: key);

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
              Center(
                child: Text(
                  _nome,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 9.hm),
              ),
              const EventCard(
                  "Copa Discentes UFRN",
                  "Participação especial dos cursos de tecnologia"
              ),
              const EventCard(
                  "Copa dos Servidores UFRN",
                  "Convocação para todos os servidores"
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.wm),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomButtonRedirect(
                            'Adicionar Evento',
                            '/create_event'
                        )
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
