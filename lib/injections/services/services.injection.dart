import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

class ServicesInjection {
  static Future<void> init() async {
    final getIt = GetIt.I;

    final store = FirebaseFirestore.instance;

    getIt.registerLazySingleton<FirebaseFirestore>(() => store);
  }
}
