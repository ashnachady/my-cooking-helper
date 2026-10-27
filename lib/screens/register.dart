import 'package:flutter/material.dart';
import 'package:my_cooking_helper/customWidgets/customButton.dart';
import 'package:my_cooking_helper/customWidgets/customTextfield.dart';
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
  bool _isHidden = true;

  @override
  void dispose() {
    _emailController.dispose();
    _pswordController.dispose();
    _retypePswordController.dispose();
    _fNameController.dispose();
    _lNameController.dispose();
    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight(context),
          padding: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text for 'create account'
              Text(
                "Create An Account",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: responsiveFontSize(context, 35),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.02),

              // text for 'enter details'
              Text(
                "Enter your credentials here",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: responsiveFontSize(context, 20),
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
                obcureText: _isHidden,
                controller: _pswordController,
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                  child: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.03),

              // textfield for retype password
              CustomTextfield(
                icon: Icons.password,
                hintText: "Retype password",
                obcureText: _isHidden,
                controller: _retypePswordController,
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                  child: Icon(Icons.visibility),
                ),
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
                      fontSize: responsiveFontSize(context, 15),
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
