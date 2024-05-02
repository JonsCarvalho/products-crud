import 'package:brasil_fields/brasil_fields.dart';
import 'package:crud_engenharia/screens/create/presentation/components/create_button.widget.dart';
import 'package:crud_engenharia/screens/create/presentation/components/dropdown_category_button.widget.dart';
import 'package:crud_engenharia/screens/create/presentation/controllers/create.controller.dart';
import 'package:crud_engenharia/screens/update/presentation/components/forms.widget.dart';
import 'package:crud_engenharia/screens/update/presentation/components/product_image.widget.dart';
import 'package:crud_engenharia/shared/category.model.dart';
import 'package:crud_engenharia/shared/product.model.dart';
import 'package:crud_engenharia/shared/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CreatePage extends StatefulWidget {
  final List<Category> categories;

  const CreatePage({super.key, required this.categories});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final CreateController _controller = GetIt.I.get<CreateController>();

  late List<Category> dropdownList;

  @override
  void initState() {
    dropdownList = widget.categories;
    _controller.setCategory(widget.categories.last);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextApp.createPageTitle),
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
                      ProductImage(imageUrl: _controller.imageUrl),
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
                child: CreateButton(
                  enable: _controller.validateForm,
                  onPressed: onCreate,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Future<void> onCreate() async {
    await _controller.onCreate(
      product: Product(
        name: _controller.name,
        imageUrl: _controller.imageUrl,
        price: UtilBrasilFields.converterMoedaParaDouble(_controller.price),
        categoryId: _controller.category!.id!,
      ),
    );

    if (_controller.productCreateResponse != null && mounted) {
      Navigator.of(context).pop();
    }
  }
}
