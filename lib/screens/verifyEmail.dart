import 'package:flutter/material.dart';
import 'package:my_cooking_helper/customWidgets/customButton.dart';
import 'package:my_cooking_helper/customWidgets/customTextfield.dart';
import 'package:my_cooking_helper/screens/otpVerify.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final TextEditingController _emailController = TextEditingController();

  void otpVerification() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            OtpVerification(emailController: _emailController.text.trim()),
      ),
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
              // reset password text
              Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: responsiveFontSize(context, 35),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.02),

              //enter credential text
              Text(
                "Enter your email address for verification",
                textAlign: TextAlign.center,
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
              SizedBox(height: screenHeight(context) * 0.04),

              // verify email button
              CustomButton(
                text: "Verify Email Address",
                onPressed: otpVerification,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
