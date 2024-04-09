import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.response.dart';

abstract class ProductDeleteDatasource {
  Future<ProductDeleteResponse> call(ProductDeleteRequest productDeleteRequest);
}
