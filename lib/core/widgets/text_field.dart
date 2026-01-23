import 'package:flutter/material.dart';

/// Most user text field
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      // height: 78,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(19, 19, 19, 0.9),
        border: Border.all(
            width: 0.5,
            color: Color.fromRGBO(135, 133, 143, 1),
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(227, 227, 227, 1),
            offset: Offset(0, 1),
            blurRadius: 40,
            spreadRadius: -1,
            blurStyle: BlurStyle.inner,
          )
        ],
      ),
      child: TextFormField(
        readOnly: readOnly,
        obscureText: obscureText,
        validator: validator,
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          // filled: true,
          // fillColor: Color.fromRGBO(19, 19, 19, 1),
          hintStyle: TextStyle(
            color: Color.fromRGBO(135, 133, 143, 1),
          ),
          labelStyle: TextStyle(
            color: Color.fromRGBO(135, 133, 143, 1),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 0.5,
              color: Color.fromRGBO(135, 133, 143, 1),
            ),
            // borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
