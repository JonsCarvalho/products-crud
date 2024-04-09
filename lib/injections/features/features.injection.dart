import 'package:crud_engenharia/screens/create/features/product_create/product_create.injections.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/product_delete.injections.dart';
import 'package:crud_engenharia/screens/update/features/product_update/product_update.injections.dart';

class FeaturesInjection {
  static void init() {
    ProductCreateInjections.init();
    ProductUpdateInjections.init();
    ProductDeleteInjections.init();
  }
}
