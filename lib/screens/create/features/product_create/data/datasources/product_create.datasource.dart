import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.response.dart';

abstract class ProductCreateDatasource {
  Future<ProductCreateResponse> call(ProductCreateRequest productCreateRequest);
}
