import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.response.dart';
import 'package:dartz/dartz.dart';

abstract class ProductDeleteRepository {
  Future<Either<Exception, ProductDeleteResponse>> call(ProductDeleteRequest productDeleteRequest);
}
