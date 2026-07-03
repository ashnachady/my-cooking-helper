import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_cooking_helper/screens/login.dart';
import 'package:my_cooking_helper/utils/responsive.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Image.asset(
              'assets/logo/app_logo.png',
              width: screenWidth(context) * 0.75,
              height: screenHeight(context) * 0.4,
            ),
            SizedBox(height: screenHeight(context) * 0.04),

            /*animated tagline
            ps: add animated text kit dependency in 
            pebsspec.yaml for it to work */
            SizedBox(
              height: screenHeight(context) * 0.12,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                totalRepeatCount: 1,
                animatedTexts: [
                  TyperAnimatedText(
                    'A Better Cooking\nExperience',
                    textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dancing Script',
                    ),
                    textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
