import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final bool obcureText;
  final TextEditingController controller;
  final IconData icon;
  final Widget? suffix;

  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.obcureText,
    required this.controller,
    required this.icon,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
      child: TextField(
        obscureText: obcureText,
        controller: controller,
        style: TextStyle(
          fontSize: responsiveFontSize(context, 16),
          color: Theme.of(context).colorScheme.primary,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          prefixIcon: Icon(icon, color: Theme.of(context).colorScheme.tertiary),
          fillColor: Theme.of(context).colorScheme.surface,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: responsiveFontSize(context, 16),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 4.0),
          ),
          suffixIcon: suffix != null
              ? IconTheme(
                  data: IconThemeData(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  child: suffix!,
                )
              : null,
        ),
      ),
    );
  }
}
