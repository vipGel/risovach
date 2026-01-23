import 'package:flutter/material.dart';

/// Most used button
class PrimaryButton extends StatelessWidget {
  final String label;
  final bool readOnly;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const PrimaryButton._({
    required this.label,
    required this.onPressed,
    this.readOnly = false,
    required this.backgroundColor,
    required this.textColor,
  });

  factory PrimaryButton({
    required String label,
    required VoidCallback onPressed,
    bool readOnly = false,
  }) => PrimaryButton._(
    label: label,
    onPressed: onPressed,
    readOnly: readOnly,
    backgroundColor: Color.fromRGBO(137, 36, 231, 1),
    textColor: Colors.white,
  );

  factory PrimaryButton.secondary({
    required String label,
    required VoidCallback onPressed,
    bool readOnly = false,
  }) => PrimaryButton._(
    label: label,
    onPressed: onPressed,
    readOnly: readOnly,
    backgroundColor: Colors.white,
    textColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: readOnly ? Colors.white : backgroundColor,
      ),
      onPressed: readOnly ? null : onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
    );
  }
}
