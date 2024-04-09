import 'package:crud_engenharia/screens/create/features/product_create/data/datasources/product_create.datasource.dart';
import 'package:crud_engenharia/screens/create/features/product_create/data/repositories/product_create.repository.impl.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/repositories/product_create.repository.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/usecases/product_create.usecase.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/usecases/product_create.usecase.impl.dart';
import 'package:crud_engenharia/screens/create/features/product_create/external/product_create.datasource.impl.dart';
import 'package:get_it/get_it.dart';

class ProductCreateInjections {
  static void init() {
    final GetIt getIt = GetIt.instance;

    getIt.registerFactory<ProductCreateDatasource>(
      () => ProductCreateDatasourceImpl(getIt()),
    );

    getIt.registerFactory<ProductCreateRepository>(
      () => ProductCreateRepositoryImpl(getIt()),
    );

    getIt.registerFactory<ProductCreateUseCase>(
      () => ProductCreateUseCaseImpl(getIt()),
    );
  }
}
