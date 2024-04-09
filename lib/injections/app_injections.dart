import 'package:crud_engenharia/injections/controllers/controllers.injection.dart';
import 'package:crud_engenharia/injections/features/features.injection.dart';
import 'package:crud_engenharia/injections/services/services.injection.dart';

class AppInjections {
  static Future<void> init() async {
    await ServicesInjection.init();
    FeaturesInjection.init();
    ControllersInjection.init();
  }
}
