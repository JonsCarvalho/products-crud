import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_engenharia/screens/create/presentation/create.page.dart';
import 'package:crud_engenharia/screens/read/presentation/components/product_card.widget.dart';
import 'package:crud_engenharia/screens/read/presentation/controllers/read.controller.dart';
import 'package:crud_engenharia/screens/update/presentation/update.page.dart';
import 'package:crud_engenharia/shared/category.model.dart';
import 'package:crud_engenharia/shared/collections.dart';
import 'package:crud_engenharia/shared/product.model.dart';
import 'package:crud_engenharia/shared/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({super.key});

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late Stream<QuerySnapshot<Map<String, dynamic>>> _productsStream;
  late Stream<QuerySnapshot<Map<String, dynamic>>> _categoriesStream;

  final ReadController _controller = GetIt.I.get<ReadController>();

  @override
  void initState() {
    super.initState();

    _productsStream = firestore.collection(Collections.products).snapshots();
    _categoriesStream = firestore.collection(Collections.categories).orderBy('name', descending: true).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(TextApp.nameApp),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreatePage(
                  categories: _controller.categories,
                ),
              ),
            );
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.add_circle_outline,
            color: Colors.white,
            size: 32,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Column(
          children: [
            StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: _categoriesStream,
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Ocorreu um erro!');
                }

                if (snapshot.hasData) {
                  List<Category> list = snapshot.data?.docs.map((e) => Category.fromFirestore(e)).toList() ?? [];
                  _controller.setCategories(list);

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16, top: 8),
                    child: SizedBox(
                      height: 38,
                      child: ListView.builder(
                        itemCount: list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 16 : 0, right: 8),
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(15),
                              splashColor: Colors.red,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.withOpacity(.3),
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: list[index].imageUrl != null ? Colors.transparent : Colors.red,
                                      backgroundImage: list[index].imageUrl != null ? NetworkImage(list[index].imageUrl!) : null,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(list[index].name),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }

                return const Center(child: LinearProgressIndicator());
              },
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: _productsStream,
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Ocorreu um erro!');
                  }

                  if (snapshot.hasData) {
                    List<Product> list = snapshot.data?.docs.map((e) => Product.fromFirestore(e)).toList() ?? [];
                    _controller.setProducts(list);

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                              product: list[index],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UpdatePage(
                                      product: list[index],
                                      categories: _controller.categories,
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
