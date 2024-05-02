import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  Product({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.categoryId,
  });

  String? id;
  final String name;
  final String imageUrl;
  final double price;
  final String categoryId;

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['name'],
        imageUrl: json['image_url'],
        price: double.parse(json['price'].toString()),
        categoryId: json['category_id'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'image_url': imageUrl,
        'price': price,
        'category_id': categoryId,
      }..removeWhere((key, value) => value == null);

  factory Product.fromFirestore(DocumentSnapshot documentSnapshot) {
    var product = Product.fromMap(documentSnapshot.data() as Map<String, dynamic>);
    return product..id = documentSnapshot.id;
  }
}
