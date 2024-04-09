import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: imageUrl.isNotEmpty
            ? DecorationImage(
                image: NetworkImage(imageUrl),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              )
            : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(1, 1),
            spreadRadius: 2,
            blurRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.red.withOpacity(.3),
      ),
    );
  }
}
