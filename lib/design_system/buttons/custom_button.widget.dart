import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool enable;
  final VoidCallback onPressed;
  final Color color;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.label,
    this.enable = true,
    required this.onPressed,
    this.color = Colors.red,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: OutlinedButton(
        onPressed: enable ? onPressed : null,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: enable ? color : Colors.grey,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBackgroundColor: Colors.black12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                color: enable ? color : Colors.grey,
              ),
            ),
            if (icon != null) ...{
              const SizedBox(width: 8),
              Icon(
                icon,
                color: enable ? color : Colors.grey,
              )
            }
          ],
        ),
      ),
    );
  }
}
