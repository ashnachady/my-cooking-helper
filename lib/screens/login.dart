import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/custom_button.dart';
import 'package:my_cooking_helper/custom_widgets/custom_textfield.dart';
import 'package:my_cooking_helper/screens/home.dart';
import 'package:my_cooking_helper/screens/register.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';
import 'package:my_cooking_helper/screens/verify_email.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //email and psword controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pswordController = TextEditingController();

  void login() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  void resetPassword() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => VerifyEmail()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight(context),
          padding: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //login text
              Text(
                "Log In",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: responsiveFontSize(context, 35),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.02),

              //enter credential text
              Text(
                "Enter your credentials here",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: responsiveFontSize(context, 20),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.06),

              //email textbox
              CustomTextfield(
                icon: Icons.email,
                hintText: "Email",
                obcureText: false,
                controller: _emailController,
              ),
              SizedBox(height: screenHeight(context) * 0.03),

              //psword textbox
              CustomTextfield(
                icon: Icons.password,
                hintText: "Password",
                obcureText: true,
                controller: _pswordController,
              ),

              //text button forgot password
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: responsiveWidth(context, 1)),
                  child: TextButton(
                    onPressed: resetPassword,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: responsiveFontSize(context, 15),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: screenHeight(context) * 0.04),

              //login button
              CustomButton(text: "Login", onPressed: login),

              //if new user register link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an accout?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: responsiveFontSize(context, 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => RegisterScreen()),
                    ),
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: responsiveFontSize(context, 15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
