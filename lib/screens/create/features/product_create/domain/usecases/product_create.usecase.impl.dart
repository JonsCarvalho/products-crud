import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.response.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/repositories/product_create.repository.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/usecases/product_create.usecase.dart';
import 'package:dartz/dartz.dart';

class ProductCreateUseCaseImpl implements ProductCreateUseCase {
  final ProductCreateRepository _repository;

  ProductCreateUseCaseImpl(this._repository);

  @override
  Future<Either<Exception, ProductCreateResponse>> call(ProductCreateRequest productCreateRequest) async {
    final response = await _repository(productCreateRequest);

    return response;
  }
}
