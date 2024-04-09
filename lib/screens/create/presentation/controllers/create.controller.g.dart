// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateController on CreateControllerBase, Store {
  Computed<bool>? _$validateFormComputed;

  @override
  bool get validateForm =>
      (_$validateFormComputed ??= Computed<bool>(() => super.validateForm,
              name: 'CreateControllerBase.validateForm'))
          .value;
  Computed<String>? _$nameComputed;

  @override
  String get name => (_$nameComputed ??=
          Computed<String>(() => super.name, name: 'CreateControllerBase.name'))
      .value;
  Computed<String>? _$priceComputed;

  @override
  String get price => (_$priceComputed ??= Computed<String>(() => super.price,
          name: 'CreateControllerBase.price'))
      .value;
  Computed<String>? _$imageUrlComputed;

  @override
  String get imageUrl =>
      (_$imageUrlComputed ??= Computed<String>(() => super.imageUrl,
              name: 'CreateControllerBase.imageUrl'))
          .value;
  Computed<Category?>? _$categoryComputed;

  @override
  Category? get category =>
      (_$categoryComputed ??= Computed<Category?>(() => super.category,
              name: 'CreateControllerBase.category'))
          .value;
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: 'CreateControllerBase.loading'))
      .value;
  Computed<Exception?>? _$errorComputed;

  @override
  Exception? get error =>
      (_$errorComputed ??= Computed<Exception?>(() => super.error,
              name: 'CreateControllerBase.error'))
          .value;
  Computed<ProductCreateResponse?>? _$productCreateResponseComputed;

  @override
  ProductCreateResponse? get productCreateResponse =>
      (_$productCreateResponseComputed ??= Computed<ProductCreateResponse?>(
              () => super.productCreateResponse,
              name: 'CreateControllerBase.productCreateResponse'))
          .value;

  late final _$_nameAtom =
      Atom(name: 'CreateControllerBase._name', context: context);

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
      Atom(name: 'CreateControllerBase._price', context: context);

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
      Atom(name: 'CreateControllerBase._imageUrl', context: context);

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
      Atom(name: 'CreateControllerBase._category', context: context);

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
      Atom(name: 'CreateControllerBase._loading', context: context);

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
      Atom(name: 'CreateControllerBase._error', context: context);

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

  late final _$_productCreateResponseAtom = Atom(
      name: 'CreateControllerBase._productCreateResponse', context: context);

  @override
  ProductCreateResponse? get _productCreateResponse {
    _$_productCreateResponseAtom.reportRead();
    return super._productCreateResponse;
  }

  @override
  set _productCreateResponse(ProductCreateResponse? value) {
    _$_productCreateResponseAtom
        .reportWrite(value, super._productCreateResponse, () {
      super._productCreateResponse = value;
    });
  }

  late final _$onCreateAsyncAction =
      AsyncAction('CreateControllerBase.onCreate', context: context);

  @override
  Future<void> onCreate({required Product product}) {
    return _$onCreateAsyncAction.run(() => super.onCreate(product: product));
  }

  late final _$CreateControllerBaseActionController =
      ActionController(name: 'CreateControllerBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrice(String value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setPrice');
    try {
      return super.setPrice(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageUrl(String value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setImageUrl');
    try {
      return super.setImageUrl(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(Category value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setCategory');
    try {
      return super.setCategory(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(Exception value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProductCreateResponse(ProductCreateResponse value) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase.setProductCreateResponse');
    try {
      return super.setProductCreateResponse(value);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getCreateError(Exception error) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase._getCreateError');
    try {
      return super._getCreateError(error);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _getCreateSuccess(ProductCreateResponse response) {
    final _$actionInfo = _$CreateControllerBaseActionController.startAction(
        name: 'CreateControllerBase._getCreateSuccess');
    try {
      return super._getCreateSuccess(response);
    } finally {
      _$CreateControllerBaseActionController.endAction(_$actionInfo);
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
productCreateResponse: ${productCreateResponse}
    ''';
  }
}
