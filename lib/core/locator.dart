import 'package:get_it/get_it.dart';
import 'package:sport_finder/core/routing/navigator.dart';

class LocatorService {
  static final locator = GetIt.instance;

  static void setupLocator() {
    locator.registerLazySingleton(() => NavigationService());
  }
}
