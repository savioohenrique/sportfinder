import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_finder/extensions/size_config_extension.dart';
import 'package:sport_finder/utils/widgets/button/custom_button.dart';
import 'package:sport_finder/utils/widgets/text_input/text_input.dart';
import 'package:sport_finder/core/locator.dart';
import 'package:sport_finder/core/routing/navigator.dart';

class CreateEventFormView extends StatelessWidget {
  const CreateEventFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Utilizar Appbar ou o floatingActionButton fixo no canto supeior esquerdo
      appBar: AppBar(
        title: const Text("Adicionar Evento", style: TextStyle(fontSize: 18)),
      ),
      backgroundColor: const Color(0xfff8f8f8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6.wm),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Nome do Evento"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Descrição"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Data"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Hora"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Preço"),
              Padding(
                padding: EdgeInsets.only(bottom: 3.hm),
              ),
              CustomTextInput("Localização"),
              Padding(
                padding: EdgeInsets.only(bottom: 7.hm),
              ),
              CustomButtonRedirect('Criar', '/event_list'),
              Padding(
                padding: EdgeInsets.only(bottom: 7.hm),
              ),
            ],
          ),
        ),
        )
      ),
    );
  }
}
