import 'package:flutter/material.dart';
import 'package:my_cooking_helper/screens/wrapper.dart';
import 'package:my_cooking_helper/theme/app_theme.dart';

void main() {
  runApp(MyCookingHelper());
}

class MyCookingHelper extends StatelessWidget {
  const MyCookingHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cooking Helper',
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
      theme: appTheme,
    );
  }
}
