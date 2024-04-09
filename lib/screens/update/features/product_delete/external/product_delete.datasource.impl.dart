import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/data/datasources/product_delete.datasource.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/data/dto/product_delete.response.dto.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.response.dart';
import 'package:crud_engenharia/shared/collections.dart';
import 'package:flutter/foundation.dart';

class ProductDeleteDatasourceImpl implements ProductDeleteDatasource {
  final FirebaseFirestore _store;

  ProductDeleteDatasourceImpl(this._store);

  static const String _collection = Collections.products;

  @override
  Future<ProductDeleteResponse> call(ProductDeleteRequest productDeleteRequest) async {
    try {
      debugPrint('\n\n::::PATH: $_collection');

      await _store.collection(_collection).doc(productDeleteRequest.id).delete();

      debugPrint('::::RESPONSE: SUCCESS\n');

      await Future.delayed(const Duration(seconds: 1));

      final result = ProductDeleteResponseDto.fromJson({'message': 'Produto deletado com sucesso!'});
      return result;
    } catch (e) {
      debugPrint('Error in ProductDeleteDataSourceImpl :::: $e');
      throw Exception(['Error in ProductDeleteDataSourceImpl :::: $e']);
    }
  }
}
