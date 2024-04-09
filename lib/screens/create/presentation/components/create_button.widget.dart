import 'package:crud_engenharia/design_system/buttons/custom_button.widget.dart';
import 'package:crud_engenharia/shared/text_app.dart';
import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final bool enable;
  final VoidCallback onPressed;

  const CreateButton({
    super.key,
    required this.enable,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: TextApp.createButton,
      icon: Icons.save,
      enable: enable,
      onPressed: onPressed,
    );
  }
}
