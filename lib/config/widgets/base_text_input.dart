import 'package:flutter/material.dart';

class BaseTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? errorText;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? errorBorderColor;
  const BaseTextInput({
    super.key,
    required this.controller,
    required this.label,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.errorBorderColor,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        hintText: label,
        errorText: errorText,
        focusedBorder: _focusedBorder(),
        enabledBorder: _baseBorder(),
        focusedErrorBorder: _errorBorder(),
        errorBorder: _errorBorder(),
      ),
    );
  }

  UnderlineInputBorder _focusedBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: focusedBorderColor ?? Colors.grey.shade400,
      ),
    );
  }

  UnderlineInputBorder _baseBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: enabledBorderColor ?? Colors.grey.shade300,
      ),
    );
  }

  UnderlineInputBorder _errorBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: enabledBorderColor ?? Colors.red,
      ),
    );
  }
}
