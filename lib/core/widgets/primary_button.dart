import 'package:flutter/material.dart';


/// Most used button
//todo style
class PrimaryButton extends StatelessWidget {
  final String label;
  final bool readOnly;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
      onPressed: readOnly ? null : onPressed,
      child: Text(label),
    );
  }
}
