import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';

class CustomDropdownMenu extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final List<String> items;
  final ValueChanged<String?>? onSelected;

  const CustomDropdownMenu({
    super.key,
    required this.hintText,
    required this.icon,
    this.controller,
    required this.items,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      controller: controller,
      hintText: hintText,
      enableFilter: true,
      enableSearch: true,
      requestFocusOnTap: true,
      leadingIcon: Icon(icon, color: Theme.of(context).colorScheme.tertiary),
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        constraints: BoxConstraints.tightFor(
          height: responsiveHeight(context, 5.4),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      dropdownMenuEntries: items.map((String item) {
        return DropdownMenuEntry<String>(value: item, label: item);
      }).toList(),
      onSelected: onSelected,
    );
  }
}
