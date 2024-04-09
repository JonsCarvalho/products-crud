// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReadController on ReadControllerBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: 'ReadControllerBase.loading'))
      .value;
  Computed<List<Category>>? _$categoriesComputed;

  @override
  List<Category> get categories =>
      (_$categoriesComputed ??= Computed<List<Category>>(() => super.categories,
              name: 'ReadControllerBase.categories'))
          .value;
  Computed<List<Product>>? _$productsComputed;

  @override
  List<Product> get products =>
      (_$productsComputed ??= Computed<List<Product>>(() => super.products,
              name: 'ReadControllerBase.products'))
          .value;

  late final _$_loadingAtom =
      Atom(name: 'ReadControllerBase._loading', context: context);

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

  late final _$_categoriesAtom =
      Atom(name: 'ReadControllerBase._categories', context: context);

  @override
  List<Category> get _categories {
    _$_categoriesAtom.reportRead();
    return super._categories;
  }

  @override
  set _categories(List<Category> value) {
    _$_categoriesAtom.reportWrite(value, super._categories, () {
      super._categories = value;
    });
  }

  late final _$_productsAtom =
      Atom(name: 'ReadControllerBase._products', context: context);

  @override
  List<Product> get _products {
    _$_productsAtom.reportRead();
    return super._products;
  }

  @override
  set _products(List<Product> value) {
    _$_productsAtom.reportWrite(value, super._products, () {
      super._products = value;
    });
  }

  late final _$ReadControllerBaseActionController =
      ActionController(name: 'ReadControllerBase', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$ReadControllerBaseActionController.startAction(
        name: 'ReadControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$ReadControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategories(List<Category> value) {
    final _$actionInfo = _$ReadControllerBaseActionController.startAction(
        name: 'ReadControllerBase.setCategories');
    try {
      return super.setCategories(value);
    } finally {
      _$ReadControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProducts(List<Product> value) {
    final _$actionInfo = _$ReadControllerBaseActionController.startAction(
        name: 'ReadControllerBase.setProducts');
    try {
      return super.setProducts(value);
    } finally {
      _$ReadControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
categories: ${categories},
products: ${products}
    ''';
  }
}
