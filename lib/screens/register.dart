import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/custom_button.dart';
import 'package:my_cooking_helper/custom_widgets/custom_textfield.dart';
import 'package:my_cooking_helper/screens/home.dart';
import 'package:my_cooking_helper/screens/login.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pswordController = TextEditingController();
  final TextEditingController _retypePswordController = TextEditingController();
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();

  void register() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: screenHeight(context) * 0.10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text for 'create account'
              Text(
                "Create An Account",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.02),

              // text for 'enter details'
              Text(
                "Enter your credentials here",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.06),

              // textfield for firstname
              CustomTextfield(
                hintText: "First Name",
                obcureText: false,
                controller: _fNameController,
                icon: Icons.person,
              ),
              SizedBox(height: screenHeight(context) * 0.03),

              // textfield for lastname
              CustomTextfield(
                hintText: "Last Name",
                obcureText: false,
                controller: _lNameController,
                icon: Icons.person,
              ),
              SizedBox(height: screenHeight(context) * 0.03),

              // textfield for email
              CustomTextfield(
                icon: Icons.email,
                hintText: "Email",
                obcureText: false,
                controller: _emailController,
              ),
              SizedBox(height: screenHeight(context) * 0.03),

              // textfield for create password
              CustomTextfield(
                icon: Icons.password,
                hintText: "Create password",
                obcureText: true,
                controller: _pswordController,
              ),
              SizedBox(height: screenHeight(context) * 0.03),

              // textfield for retype password
              CustomTextfield(
                icon: Icons.password,
                hintText: "Retype password",
                obcureText: true,
                controller: _retypePswordController,
              ),
              SizedBox(height: screenHeight(context) * 0.04),

              // button for register
              CustomButton(text: "Register", onPressed: register),

              // In row(text for already have account, textbutton for login)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an accout?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
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
