import 'package:brasil_fields/brasil_fields.dart';

import 'package:crud_engenharia/screens/create/presentation/components/dropdown_category_button.widget.dart';
import 'package:crud_engenharia/screens/update/presentation/components/bottom_nav_bar.dart';
import 'package:crud_engenharia/screens/update/presentation/components/forms.widget.dart';
import 'package:crud_engenharia/screens/update/presentation/components/product_image.widget.dart';
import 'package:crud_engenharia/screens/update/presentation/controllers/update.controller.dart';
import 'package:crud_engenharia/shared/category.model.dart';
import 'package:crud_engenharia/shared/product.model.dart';
import 'package:crud_engenharia/shared/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class UpdatePage extends StatefulWidget {
  final List<Category> categories;
  final Product product;

  const UpdatePage({super.key, required this.product, required this.categories});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final UpdateController _controller = GetIt.I.get<UpdateController>();

  late List<Category> dropdownList;

  @override
  void initState() {
    dropdownList = widget.categories;

    _controller.init(
      name: widget.product.name,
      price: widget.product.price,
      imageUrl: widget.product.imageUrl,
      category: dropdownList.firstWhere((element) => element.id == widget.product.categoryId),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextApp.updatePageTitle),
      ),
      body: Observer(builder: (_) {
        if (_controller.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Hero(
                        tag: widget.product,
                        child: ProductImage(imageUrl: widget.product.imageUrl),
                      ),
                      Forms(
                        nameController: _controller.nameController,
                        priceController: _controller.priceController,
                        imageUrlController: _controller.imageUrlController,
                        setName: _controller.setName,
                        setPrice: _controller.setPrice,
                        setImageUrl: _controller.setImageUrl,
                      ),
                      DropdownCategoryButton(
                        selected: _controller.category,
                        items: dropdownList,
                        onChanged: _controller.setCategory,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: BottomNavBar(
                  enableUpdateButton: _controller.validateForm,
                  onUpdate: onUpdate,
                  onDelete: onDelete,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Future<void> onUpdate() async {
    await _controller.onUpdate(
      product: Product(
        name: _controller.name,
        imageUrl: _controller.imageUrl,
        price: UtilBrasilFields.converterMoedaParaDouble(_controller.price),
        categoryId: _controller.category!.id!,
        id: widget.product.id,
      ),
    );

    if (_controller.productUpdateResponse != null && mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> onDelete() async {
    await _controller.onDelete(id: widget.product.id!);

    if (_controller.productDeleteResponse != null && mounted) {
      Navigator.of(context).pop();
    }
  }
}
