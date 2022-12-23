import 'package:dropdown_search/dropdown_search.dart'
    show DropdownSearch, DropDownDecoratorProps;
import 'package:flutter/material.dart';

class BaseDropDown<T> extends StatelessWidget {
  final T selectedItem;
  final List<T> items;
  final Future<List<T>> Function(String)? asyncItems;
  final String Function(T)? itemAsString;
  final String label;
  final void Function(T? value) onChanged;
  final String? errorText;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? errorBorderColor;

  const BaseDropDown({
    super.key,
    required this.selectedItem,
    required this.items,
    this.asyncItems,
    this.itemAsString,
    required this.label,
    this.errorText,
    required this.onChanged,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.errorBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      selectedItem: selectedItem,
      items: asyncItems != null ? [] : items,
      asyncItems: asyncItems,
      itemAsString: itemAsString,
      onChanged: onChanged,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          enabledBorder: _baseBorder(),
          focusedBorder: _focusedBorder(),
          errorBorder: _errorBorder(),
          hintText: label,
          label: Text(label),
        ),
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
