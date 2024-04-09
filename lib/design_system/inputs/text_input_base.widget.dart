import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputBase extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? setText;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final List<TextInputFormatter>? inputFormaters;

  const TextInputBase({
    super.key,
    required this.controller,
    required this.hintText,
    this.inputAction = TextInputAction.next,
    this.keyboardType = TextInputType.name,
    this.inputFormaters,
    required this.setText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: inputFormaters,
      keyboardType: keyboardType,
      textInputAction: inputAction,
      onChanged: setText,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 10,
        ),
        // errorText: errorText,
        // hintStyle: hintStyle ?? StyleApp.textDefault(fontSize: 15, color: colorTextField ?? ColorApp.white),

        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: const BorderSide(color: ColorApp.grey),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: colorFocusedBorder ?? ColorApp.green),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),

      // style: style?.copyWith(
      //       color: (disabledStyle && focusNode?.hasFocus == false) ? ColorApp.grey : StyleApp.textDefault().color,
      //     ) ??
      //     StyleApp.textDefault().copyWith(
      //       color: (disabledStyle && focusNode?.hasFocus == false) ? ColorApp.grey : StyleApp.textDefault().color,
      //     ),
    );
  }
}
