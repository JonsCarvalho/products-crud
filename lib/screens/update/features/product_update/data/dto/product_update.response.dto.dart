import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.response.dart';

class ProductUpdateResponseDto extends ProductUpdateResponse {
  ProductUpdateResponseDto({
    required String message,
  }) : super(
          message: message,
        );

  static ProductUpdateResponse fromJson(Map<String, dynamic> json) {
    return ProductUpdateResponse(
      message: json['message'],
    );
  }
}
