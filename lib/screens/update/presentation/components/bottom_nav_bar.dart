import 'package:crud_engenharia/design_system/buttons/custom_button.widget.dart';
import 'package:crud_engenharia/shared/text_app.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final VoidCallback onUpdate;
  final VoidCallback onDelete;
  final bool enableUpdateButton;

  const BottomNavBar({
    super.key,
    required this.onUpdate,
    required this.onDelete,
    required this.enableUpdateButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            label: TextApp.updateButton,
            enable: enableUpdateButton,
            onPressed: onUpdate,
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: onDelete,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
