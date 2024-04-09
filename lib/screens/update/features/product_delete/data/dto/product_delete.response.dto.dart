import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.response.dart';

class ProductDeleteResponseDto extends ProductDeleteResponse {
  ProductDeleteResponseDto({
    required String message,
  }) : super(
          message: message,
        );

  static ProductDeleteResponse fromJson(Map<String, dynamic> json) {
    return ProductDeleteResponse(
      message: json['message'],
    );
  }
}
