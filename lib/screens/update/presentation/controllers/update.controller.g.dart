// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UpdateController on UpdateControllerBase, Store {
  Computed<bool>? _$validateFormComputed;

  @override
  bool get validateForm =>
      (_$validateFormComputed ??= Computed<bool>(() => super.validateForm,
              name: 'UpdateControllerBase.validateForm'))
          .value;
  Computed<String>? _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: 'UpdateControllerBase.name'))
      .value;
  Computed<String>? _$priceComputed;

  @override
  String get price => (_$priceComputed ??= Computed<String>(() => super.price,
          name: 'UpdateControllerBase.price'))
      .value;
  Computed<String>? _$imageUrlComputed;

  @override
  String get imageUrl =>
      (_$imageUrlComputed ??= Computed<String>(() => super.imageUrl,
              name: 'UpdateControllerBase.imageUrl'))
          .value;
  Computed<Category?>? _$categoryComputed;

  @override
  Category? get category =>
      (_$categoryComputed ??= Computed<Category?>(() => super.category,
              name: 'UpdateControllerBase.category'))
          .value;
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: 'UpdateControllerBase.loading'))
      .value;
  Computed<Exception?>? _$errorComputed;

  @override
  Exception? get error =>
      (_$errorComputed ??= Computed<Exception?>(() => super.error,
              name: 'UpdateControllerBase.error'))
          .value;
  Computed<ProductUpdateResponse?>? _$productUpdateResponseComputed;

  @override
  ProductUpdateResponse? get productUpdateResponse =>
      (_$productUpdateResponseComputed ??= Computed<ProductUpdateResponse?>(
              () => super.productUpdateResponse,
              name: 'UpdateControllerBase.productUpdateResponse'))
          .value;
  Computed<ProductDeleteResponse?>? _$productDeleteResponseComputed;

  @override
  ProductDeleteResponse? get productDeleteResponse =>
      (_$productDeleteResponseComputed ??= Computed<ProductDeleteResponse?>(
              () => super.productDeleteResponse,
              name: 'UpdateControllerBase.productDeleteResponse'))
          .value;

  late final _$_nameAtom =
      Atom(name: 'UpdateControllerBase._name', context: context);

  @override
  String get _name {
    _$_nameAtom.reportRead();
    return super._name;
  }

  @override
  set _name(String value) {
    _$_nameAtom.reportWrite(value, super._name, () {
      super._name = value;
    });
  }

  late final _$_priceAtom =
      Atom(name: 'UpdateControllerBase._price', context: context);

  @override
  String get _price {
    _$_priceAtom.reportRead();
    return super._price;
  }

  @override
  set _price(String value) {
    _$_priceAtom.reportWrite(value, super._price, () {
      super._price = value;
    });
  }

  late final _$_imageUrlAtom =
      Atom(name: 'UpdateControllerBase._imageUrl', context: context);

  @override
  String get _imageUrl {
    _$_imageUrlAtom.reportRead();
    return super._imageUrl;
  }

  @override
  set _imageUrl(String value) {
    _$_imageUrlAtom.reportWrite(value, super._imageUrl, () {
      super._imageUrl = value;
    });
  }

  late final _$_categoryAtom =
      Atom(name: 'UpdateControllerBase._category', context: context);

  @override
  Category? get _category {
    _$_categoryAtom.reportRead();
    return super._category;
  }

  @override
  set _category(Category? value) {
    _$_categoryAtom.reportWrite(value, super._category, () {
      super._category = value;
    });
  }

  late final _$_loadingAtom =
      Atom(name: 'UpdateControllerBase._loading', context: context);

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: 'UpdateControllerBase._error', context: context);

  @override
  Exception? get _error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  set _error(Exception? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_productUpdateResponseAtom = Atom(
      name: 'UpdateControllerBase._productUpdateResponse', context: context);

  @override
  ProductUpdateResponse? get _productUpdateResponse {
    _$_productUpdateResponseAtom.reportRead();
    return super._productUpdateResponse;
  }

  @override
  set _productUpdateResponse(ProductUpdateResponse? value) {
    _$_productUpdateResponseAtom
        .reportWrite(value, super._productUpdateResponse, () {
      super._productUpdateResponse = value;
    });
  }

  late final _$_productDeleteResponseAtom = Atom(
      name: 'UpdateControllerBase._productDeleteResponse', context: context);

  @override
  ProductDeleteResponse? get _productDeleteResponse {
    _$_productDeleteResponseAtom.reportRead();
    return super._productDeleteResponse;
  }

  @override
  set _productDeleteResponse(ProductDeleteResponse? value) {
    _$_productDeleteResponseAtom
        .reportWrite(value, super._productDeleteResponse, () {
      super._productDeleteResponse = value;
    });
  }

  late final _$onUpdateAsyncAction =
      AsyncAction('UpdateControllerBase.onUpdate', context: context);

  @override
  Future<void> onUpdate({required Product product}) {
    return _$onUpdateAsyncAction.run(() => super.onUpdate(product: product));
  }

  late final _$onDeleteAsyncAction =
      AsyncAction('UpdateControllerBase.onDelete', context: context);

  @override
  Future<void> onDelete({required String id}) {
    return _$onDeleteAsyncAction.run(() => super.onDelete(id: id));
  }

  late final _$UpdateControllerBaseActionController =
      ActionController(name: 'UpdateControllerBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrice(String value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setPrice');
    try {
      return super.setPrice(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageUrl(String value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setImageUrl');
    try {
      return super.setImageUrl(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(Category value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setCategory');
    try {
      return super.setCategory(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(Exception value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProductUpdateResponse(ProductUpdateResponse value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setProductUpdateResponse');
    try {
      return super.setProductUpdateResponse(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getUpdateError(Exception error) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase._getUpdateError');
    try {
      return super._getUpdateError(error);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getUpdateSuccess(ProductUpdateResponse response) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase._getUpdateSuccess');
    try {
      return super._getUpdateSuccess(response);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProductDeleteResponse(ProductDeleteResponse value) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase.setProductDeleteResponse');
    try {
      return super.setProductDeleteResponse(value);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getDeleteError(Exception error) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase._getDeleteError');
    try {
      return super._getDeleteError(error);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getDeleteSuccess(ProductDeleteResponse response) {
    final _$actionInfo = _$UpdateControllerBaseActionController.startAction(
        name: 'UpdateControllerBase._getDeleteSuccess');
    try {
      return super._getDeleteSuccess(response);
    } finally {
      _$UpdateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
validateForm: ${validateForm},
name: ${name},
price: ${price},
imageUrl: ${imageUrl},
category: ${category},
loading: ${loading},
error: ${error},
productUpdateResponse: ${productUpdateResponse},
productDeleteResponse: ${productDeleteResponse}
    ''';
  }
}
