import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.response.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/repositories/product_update.repository.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/usecases/product_update.usecase.dart';
import 'package:dartz/dartz.dart';

class ProductUpdateUseCaseImpl implements ProductUpdateUseCase {
  final ProductUpdateRepository _repository;

  ProductUpdateUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, ProductUpdateResponse>> call(ProductUpdateRequest productUpdateRequest) async {
    final response = await _repository(productUpdateRequest);

    return response;
  }
}
