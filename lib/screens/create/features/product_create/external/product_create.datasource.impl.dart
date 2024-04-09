import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_engenharia/screens/create/features/product_create/data/datasources/product_create.datasource.dart';
import 'package:crud_engenharia/screens/create/features/product_create/data/dto/product_create.request.dto.dart';
import 'package:crud_engenharia/screens/create/features/product_create/data/dto/product_create.response.dto.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.response.dart';
import 'package:crud_engenharia/shared/collections.dart';
import 'package:flutter/foundation.dart';

class ProductCreateDatasourceImpl implements ProductCreateDatasource {
  final FirebaseFirestore _store;

  ProductCreateDatasourceImpl(this._store);

  static const String _collection = Collections.products;

  @override
  Future<ProductCreateResponse> call(ProductCreateRequest productCreateRequest) async {
    try {
      debugPrint('\n\n::::PATH: $_collection');

      await _store.collection(_collection).add(ProductCreateRequestDto.toJson(productCreateRequest));

      debugPrint('::::RESPONSE: SUCCESS\n');

      await Future.delayed(const Duration(seconds: 1));

      final result = ProductCreateResponseDto.fromJson({'message': 'Produto criado com sucesso!'});
      return result;
    } catch (e) {
      debugPrint('Error in ProductCreateDataSourceImpl :::: $e');
      throw Exception(['Error in ProductCreateDataSourceImpl :::: $e']);
    }
  }
}
