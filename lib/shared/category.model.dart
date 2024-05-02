import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  Category({
    this.id,
    required this.name,
    required this.imageUrl,
  });

  String? id;
  final String name;
  final String? imageUrl;

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json['name'],
        imageUrl: json['image_url'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'image_url': imageUrl,
      };

  factory Category.fromFirestore(DocumentSnapshot documentSnapshot) {
    var category = Category.fromMap(documentSnapshot.data() as Map<String, dynamic>);
    return category..id = documentSnapshot.id;
  }
}
