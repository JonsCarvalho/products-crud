import 'package:crud_engenharia/core/entities/product.model.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.request.dart';

class ProductUpdateRequestDto extends ProductUpdateRequest {
  ProductUpdateRequestDto({
    required Product product,
  }) : super(
          product: product,
        );

  static Map<String, dynamic> toJson(ProductUpdateRequest request) {
    return request.product.toMap();
  }
}
