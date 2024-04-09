import 'package:brasil_fields/brasil_fields.dart';
import 'package:crud_engenharia/design_system/inputs/text_input_base.widget.dart';
import 'package:crud_engenharia/shared/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Forms extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController priceController;
  final TextEditingController imageUrlController;
  final Function(String)? setName;
  final Function(String)? setPrice;
  final Function(String)? setImageUrl;

  const Forms({
    super.key,
    required this.nameController,
    required this.priceController,
    required this.imageUrlController,
    this.setName,
    this.setPrice,
    this.setImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        TextInputBase(
          controller: nameController,
          setText: setName,
          hintText: TextApp.name,
        ),
        const SizedBox(height: 16),
        TextInputBase(
          controller: priceController,
          setText: setPrice,
          hintText: TextApp.price,
          inputFormaters: [
            FilteringTextInputFormatter.digitsOnly,
            CentavosInputFormatter(moeda: true),
          ],
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        TextInputBase(
          controller: imageUrlController,
          setText: setImageUrl,
          hintText: TextApp.imageUrl,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
