import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.response.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/repositories/product_delete.repository.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/usecases/product_delete.usecase.dart';
import 'package:dartz/dartz.dart';

class ProductDeleteUseCaseImpl implements ProductDeleteUseCase {
  final ProductDeleteRepository _repository;

  ProductDeleteUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, ProductDeleteResponse>> call(ProductDeleteRequest productDeleteRequest) async {
    final response = await _repository(productDeleteRequest);

    return response;
  }
}
