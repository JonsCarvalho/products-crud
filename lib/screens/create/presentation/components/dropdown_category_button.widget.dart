import 'package:crud_engenharia/core/entities/category.model.dart';
import 'package:flutter/material.dart';

class DropdownCategoryButton extends StatelessWidget {
  final Category? selected;
  final List<Category> items;
  final Function(Category) onChanged;

  const DropdownCategoryButton({
    super.key,
    required this.selected,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      child: DropdownButton(
        isExpanded: true,
        borderRadius: BorderRadius.circular(15),
        value: selected,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((Category item) {
          return DropdownMenuItem(
            value: item,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: item.imageUrl != null ? Colors.transparent : Colors.red,
                    backgroundImage: item.imageUrl != null ? NetworkImage(item.imageUrl!) : null,
                  ),
                  const SizedBox(width: 8),
                  Text(item.name),
                ],
              ),
            ),
          );
        }).toList(),
        onChanged: (Category? newValue) {
          onChanged(newValue!);
        },
      ),
    );
  }
}
