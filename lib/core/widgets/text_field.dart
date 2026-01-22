import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool readOnly;
  final String label;
  final String hint;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.validator,
    required this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(labelText: label, hintText: hint),
    );
  }
}
