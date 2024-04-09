import 'package:crud_engenharia/screens/update/features/product_update/data/datasources/product_update.datasource.dart';
import 'package:crud_engenharia/screens/update/features/product_update/data/repositories/product_update.repository.impl.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/repositories/product_update.repository.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/usecases/product_update.usecase.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/usecases/product_update.usecase.impl.dart';
import 'package:crud_engenharia/screens/update/features/product_update/external/product_update.datasource.impl.dart';
import 'package:get_it/get_it.dart';

class ProductUpdateInjections {
  static void init() {
    final GetIt getIt = GetIt.instance;

    getIt.registerFactory<ProductUpdateDatasource>(
      () => ProductUpdateDatasourceImpl(getIt()),
    );

    getIt.registerFactory<ProductUpdateRepository>(
      () => ProductUpdateRepositoryImpl(getIt()),
    );

    getIt.registerFactory<ProductUpdateUseCase>(
      () => ProductUpdateUseCaseImpl(getIt()),
    );
  }
}
