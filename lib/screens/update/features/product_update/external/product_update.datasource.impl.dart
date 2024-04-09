import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_engenharia/screens/update/features/product_update/data/datasources/product_update.datasource.dart';
import 'package:crud_engenharia/screens/update/features/product_update/data/dto/product_update.request.dto.dart';
import 'package:crud_engenharia/screens/update/features/product_update/data/dto/product_update.response.dto.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.response.dart';
import 'package:crud_engenharia/shared/collections.dart';
import 'package:flutter/foundation.dart';

class ProductUpdateDatasourceImpl implements ProductUpdateDatasource {
  final FirebaseFirestore _store;

  ProductUpdateDatasourceImpl(this._store);

  static const String _collection = Collections.products;

  @override
  Future<ProductUpdateResponse> call(ProductUpdateRequest productUpdateRequest) async {
    try {
      debugPrint('\n\n::::PATH: $_collection');

      await _store.collection(_collection).doc(productUpdateRequest.product.id).update(ProductUpdateRequestDto.toJson(productUpdateRequest));

      debugPrint('::::RESPONSE: SUCCESS\n');

      await Future.delayed(const Duration(seconds: 1));

      final result = ProductUpdateResponseDto.fromJson({'message': 'Produto atualizado com sucesso!'});
      return result;
    } catch (e) {
      debugPrint('Error in ProductUpdateDataSourceImpl :::: $e');
      throw Exception(['Error in ProductUpdateDataSourceImpl :::: $e']);
    }
  }
}
