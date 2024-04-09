import 'package:crud_engenharia/screens/create/presentation/controllers/create.controller.dart';
import 'package:crud_engenharia/screens/read/presentation/controllers/read.controller.dart';
import 'package:crud_engenharia/screens/update/presentation/controllers/update.controller.dart';
import 'package:get_it/get_it.dart';

class ControllersInjection {
  static void init() {
    final getIt = GetIt.I;

    getIt.registerFactory<CreateController>(
      () => CreateController(getIt()),
    );

    getIt.registerFactory<UpdateController>(
      () => UpdateController(getIt(), getIt()),
    );

    getIt.registerFactory<ReadController>(
      () => ReadController(),
    );
  }
}
