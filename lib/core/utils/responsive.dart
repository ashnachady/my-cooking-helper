import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

// Responsive Width & Height by Percentage
double responsiveWidth(BuildContext context, double percentage) =>
    screenWidth(context) * (percentage / 100);

double responsiveHeight(BuildContext context, double percentage) =>
    screenHeight(context) * (percentage / 100);

// Responsive Font Size (Based on a baseline screen width, e.g., 375px for standard mobile)
double responsiveFontSize(BuildContext context, double fontSize) {
  double baseWidth = 375.0; // Standard base layout width
  return fontSize * (screenWidth(context) / baseWidth);
}
