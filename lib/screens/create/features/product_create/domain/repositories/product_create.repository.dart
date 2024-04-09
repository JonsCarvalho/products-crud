import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.response.dart';
import 'package:dartz/dartz.dart';

abstract class ProductCreateRepository {
  Future<Either<Exception, ProductCreateResponse>> call(ProductCreateRequest productCreateRequest);
}
