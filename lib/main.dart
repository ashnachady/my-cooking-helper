import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_cooking_helper/screens/wrapper.dart';
import 'package:my_cooking_helper/core/theme/appTheme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
