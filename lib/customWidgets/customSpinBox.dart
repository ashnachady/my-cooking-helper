import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';

class CustomNumberSpinBox extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  const CustomNumberSpinBox({
    super.key,
    required this.hintText,
    required this.icon,
    required this.value,
    this.min = 1,
    this.max = 10000,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
      child: SpinBox(
        min: min,
        max: max,
        value: value,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          constraints: BoxConstraints.tightFor(
            height: responsiveHeight(context, 5.4),
          ),
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
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: responsiveFontSize(context, 16),
          ),
        ),
      ),
    );
  }
}
