import 'package:flutter/material.dart';
import 'package:sport_finder/ui/events/create_event_form_view.dart';
import 'package:sport_finder/ui/events/event_list_view.dart';
import 'package:sport_finder/ui/locations/finding_view.dart';
import 'package:sport_finder/ui/login/sign_in_view.dart';
import 'package:sport_finder/ui/login/sign_up_view.dart';
import 'package:sport_finder/ui/payments/add_cart_view.dart';
import 'package:sport_finder/ui/payments/payment_method_view.dart';
import 'package:sport_finder/ui/promocode/promocode_list_view.dart';
import 'package:sport_finder/ui/promocode/promocode_reedem_view.dart';
import 'package:sport_finder/ui/support/support_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/sign_in':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SignInView());
      case '/sign_up':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SignUpView());
      case '/finding':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const FindingView());
      case '/support':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SupportView());
      case '/promocode_list':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const PromocodeListView());
      case '/promocode_redeem':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const PromocodeRedeemView());
      case '/event_list':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const EventListView());
      case '/create_event':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const CreateEventFormView());
      case '/payment':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const PaymentMethodView());
      case '/add_card':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const AddCardView());
      default:
        //Se não tiver rota com o nome recebido
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: const Center(
          child: Text('Route error'),
        ),
      );
    });
  }
}
