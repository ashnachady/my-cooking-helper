import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/custom_textfield.dart';
import 'package:my_cooking_helper/utils/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //email and psword controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //login text
            Text(
              "Log In",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: screenHeight(context) * 0.02),

            //enter credential text
            Text(
              "Enter your credentials here",
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 20,
              ),
            ),
            SizedBox(height: screenHeight(context) * 0.08),

            //email textbox
            CustomTextfield(
              hintText: "Email",
              obcureText: false,
              controller: _emailController,
            ),
            SizedBox(height: screenHeight(context) * 0.02),

            //psword textbox
            CustomTextfield(
              hintText: "password",
              obcureText: true,
              controller: _pswordController,
            ),
            //login button

            //if new user register link
          ],
        ),
      ),
    );
  }
}
