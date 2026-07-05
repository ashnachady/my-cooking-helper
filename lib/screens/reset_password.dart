import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';
import 'package:my_cooking_helper/custom_widgets/custom_button.dart';
import 'package:my_cooking_helper/custom_widgets/custom_textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _pswordController = TextEditingController();
  final TextEditingController _retypePswordController = TextEditingController();

  void changePassword() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reset password text
            Text(
              "Reset Password",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: screenHeight(context) * 0.02),

            // change your password text
            Text(
              "Change your password",
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 20,
              ),
            ),
            SizedBox(height: screenHeight(context) * 0.06),

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
            CustomButton(text: "Change Password", onPressed: changePassword),
          ],
        ),
      ),
    );
  }
}
