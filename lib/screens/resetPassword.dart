import 'package:flutter/material.dart';
import 'package:my_cooking_helper/custom_widgets/custom_button.dart';
import 'package:my_cooking_helper/custom_widgets/custom_textfield.dart';
import 'package:my_cooking_helper/screens/otpVerify.dart';
import 'package:my_cooking_helper/utils/responsive.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  final TextEditingController _emailController = TextEditingController();

  void otpVerification() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => OtpVerification()),
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
              "Reset Password",
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
