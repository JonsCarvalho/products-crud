import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.request.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/entities/product_create.response.dart';
import 'package:crud_engenharia/screens/create/features/product_create/domain/usecases/product_create.usecase.dart';
import 'package:crud_engenharia/shared/category.model.dart';
import 'package:crud_engenharia/shared/product.model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'create.controller.g.dart';

class CreateController = CreateControllerBase with _$CreateController;

abstract class CreateControllerBase with Store {
  final ProductCreateUseCase _productCreateUseCase;

  CreateControllerBase(this._productCreateUseCase);

  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();

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

  //Create

  @observable
  ProductCreateResponse? _productCreateResponse;

  @computed
  ProductCreateResponse? get productCreateResponse => _productCreateResponse;

  @action
  void setProductCreateResponse(ProductCreateResponse value) => _productCreateResponse = value;

  @action
  Future<void> onCreate({required Product product}) async {
    if (validateForm) {
      setLoading(true);

      final createRequest = ProductCreateRequest(product: product);

      final result = await _productCreateUseCase(createRequest);
      result.fold(_getCreateError, _getCreateSuccess);
    }
  }

  @action
  void _getCreateError(Exception error) {
    setError(error);
    setLoading(false);
  }

  @action
  void _getCreateSuccess(ProductCreateResponse response) {
    setProductCreateResponse(response);
    setLoading(false);
  }
}
