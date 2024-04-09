import 'package:brasil_fields/brasil_fields.dart';
import 'package:crud_engenharia/core/entities/category.model.dart';
import 'package:crud_engenharia/core/entities/product.model.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.request.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/entities/product_delete.response.dart';
import 'package:crud_engenharia/screens/update/features/product_delete/domain/usecases/product_delete.usecase.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.request.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/entities/product_update.response.dart';
import 'package:crud_engenharia/screens/update/features/product_update/domain/usecases/product_update.usecase.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'update.controller.g.dart';

class UpdateController = UpdateControllerBase with _$UpdateController;

abstract class UpdateControllerBase with Store {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();

  final ProductUpdateUseCase _productUpdateUseCase;
  final ProductDeleteUseCase _productDeleteUseCase;

  UpdateControllerBase(
    this._productUpdateUseCase,
    this._productDeleteUseCase,
  );

  void init({
    required String name,
    required double price,
    required String imageUrl,
    required Category category,
  }) {
    nameController = TextEditingController(text: name);
    priceController = TextEditingController(text: UtilBrasilFields.obterReal(price));
    imageUrlController = TextEditingController(text: imageUrl);

    setName(name);
    setPrice(UtilBrasilFields.obterReal(price));
    setImageUrl(imageUrl);
    setCategory(category);
  }

  @computed
  bool get validateForm => _name.isNotEmpty && _price.isNotEmpty && _imageUrl.isNotEmpty;

  @observable
  String _name = '';

  @computed
  String get name => _name;

  @action
  void setName(String value) => _name = value;

  @observable
  String _price = '';

  @computed
  String get price => _price;

  @action
  void setPrice(String value) => _price = value;

  @observable
  String _imageUrl = '';

  @computed
  String get imageUrl => _imageUrl;

  @action
  void setImageUrl(String value) => _imageUrl = value;

  @observable
  Category? _category;

  @computed
  Category? get category => _category;

  @action
  void setCategory(Category value) => _category = value;

  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @action
  void setLoading(bool value) => _loading = value;

  @observable
  Exception? _error;

  @computed
  Exception? get error => _error;

  @action
  void setError(Exception value) => _error = value;

  //Update

  @observable
  ProductUpdateResponse? _productUpdateResponse;

  @computed
  ProductUpdateResponse? get productUpdateResponse => _productUpdateResponse;

  @action
  void setProductUpdateResponse(ProductUpdateResponse value) => _productUpdateResponse = value;

  @action
  Future<void> onUpdate({required Product product}) async {
    if (validateForm) {
      setLoading(true);

      final updateRequest = ProductUpdateRequest(product: product);

      final result = await _productUpdateUseCase(updateRequest);
      result.fold(_getUpdateError, _getUpdateSuccess);
    }
  }

  @action
  void _getUpdateError(Exception error) {
    setError(error);
    setLoading(false);
  }

  @action
  void _getUpdateSuccess(ProductUpdateResponse response) {
    setProductUpdateResponse(response);
    setLoading(false);
  }

  //Delete

  @observable
  ProductDeleteResponse? _productDeleteResponse;

  @computed
  ProductDeleteResponse? get productDeleteResponse => _productDeleteResponse;

  @action
  void setProductDeleteResponse(ProductDeleteResponse value) => _productDeleteResponse = value;

  @action
  Future<void> onDelete({required String id}) async {
    setLoading(true);

    final result = await _productDeleteUseCase(ProductDeleteRequest(id: id));
    result.fold(_getDeleteError, _getDeleteSuccess);
  }

  @action
  void _getDeleteError(Exception error) {
    setError(error);
    setLoading(false);
  }

  @action
  void _getDeleteSuccess(ProductDeleteResponse response) {
    setProductDeleteResponse(response);
    setLoading(false);
  }
}
