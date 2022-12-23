import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class BaseDatePickerInput extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String? errorText;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? errorBorderColor;

  const BaseDatePickerInput({
    super.key,
    required this.controller,
    required this.label,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.errorBorderColor,
    this.errorText,
  });

  @override
  State<BaseDatePickerInput> createState() => _BaseDatePickerInputState();
}

class _BaseDatePickerInputState extends State<BaseDatePickerInput> {
  Future<void> _showDatePickerDialog() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null) {
      setState(() {
        widget.controller.text =
            DateFormat('yyyy-MM-dd').format(pickedDate).toString();
      });
    } else {
      setState(() {
        widget.controller.text =
            DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: _showDatePickerDialog,
      controller: widget.controller,
      decoration: InputDecoration(
        label: Text(widget.label),
        hintText: widget.label,
        errorText: widget.errorText,
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
        color: widget.focusedBorderColor ?? Colors.grey.shade400,
      ),
    );
  }

  UnderlineInputBorder _baseBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: widget.enabledBorderColor ?? Colors.grey.shade300,
      ),
    );
  }

  UnderlineInputBorder _errorBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: widget.enabledBorderColor ?? Colors.red,
      ),
    );
  }
}
