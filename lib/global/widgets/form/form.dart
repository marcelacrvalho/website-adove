import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/theme/theme.dart';
import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final bool maxLines;

  const FormFieldWidget({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.maxLines = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return TextFormField(
        controller: controller,
        obscureText: obscureText,
        maxLines: maxLines ? 2 : 1,
        style: TextStyle(color: webThemeData.primaryColor, fontSize: kText),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: kTextSmall,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
        ),
      );
    });
  }
}
