import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/custom_button.dart';
import 'package:my_cooking_helper/custom_widgets/custom_textfield.dart';
import 'package:my_cooking_helper/screens/otp_verify.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // reset password text
            Text(
              "Forgot Password?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: screenHeight(context) * 0.02),

            //enter credential text
            Text(
              "Enter your email address for verification",
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 20,
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
    );
  }
}
