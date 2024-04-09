import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.response.dart';

abstract class ProductUpdateDatasource {
  Future<ProductUpdateResponse> call(ProductUpdateRequest productUpdateRequest);
}
