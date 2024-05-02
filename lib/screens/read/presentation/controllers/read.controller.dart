import 'package:crud_engenharia/shared/category.model.dart';
import 'package:crud_engenharia/shared/product.model.dart';
import 'package:mobx/mobx.dart';

part 'read.controller.g.dart';

class ReadController = ReadControllerBase with _$ReadController;

abstract class ReadControllerBase with Store {
  ReadControllerBase();

  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @action
  void setLoading(bool value) => _loading = value;

  @observable
  List<Category> _categories = <Category>[].asObservable();

  @computed
  List<Category> get categories => _categories;

  @action
  void setCategories(List<Category> value) => _categories = value;

  @observable
  List<Product> _products = <Product>[].asObservable();

  @computed
  List<Product> get products => _products;

  @action
  void setProducts(List<Product> value) => _products = value;
}
