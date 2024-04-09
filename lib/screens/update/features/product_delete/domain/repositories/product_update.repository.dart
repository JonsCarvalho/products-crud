import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.response.dart';
import 'package:dartz/dartz.dart';

abstract class ProductUpdateRepository {
  Future<Either<Exception, ProductUpdateResponse>> call(ProductUpdateRequest productUpdateRequest);
}
