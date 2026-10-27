import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_cooking_helper/core/utils/responsive.dart';
import 'package:my_cooking_helper/customWidgets/customButton.dart';
import 'package:my_cooking_helper/screens/resetPassword.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatefulWidget {
  final String _emailController;

  //email address carried from verify_email.dart
  const OtpVerification({required this._emailController, super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  late Timer _timer;
  int _startSeconds = 30;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_startSeconds == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _startSeconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String otpCode = '';
    dynamic handleButtonClick;

    void submitOTP() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ResetPassword()),
      );
    }

    void resendCode() {
      if (_startSeconds == 0) {
        setState(() {
          _startSeconds = 30;
        });
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (_startSeconds == 0) {
            setState(() {
              timer.cancel();
            });
          } else {
            setState(() {
              _startSeconds--;
            });
          }
        });
      }
    }

    if (_startSeconds == 0) {
      handleButtonClick = resendCode;
    } else {
      handleButtonClick = null;
    }

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
              // Verification text
              Text(
                "Verify Your Email",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: responsiveFontSize(context, 35),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.02),

              // Enter Otp text
              Text(
                "A verification code is sent to:",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: responsiveFontSize(context, 20),
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.01),

              // email address text
              Text(
                widget._emailController,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: responsiveFontSize(context, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight(context) * 0.04),

              /* textboxes for otp
              note: add Pinput dependency in 
              pebspec.yaml for it to work */
              Pinput(length: 6, onChanged: (value) => otpCode = value),

              // resent button with timer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Code not received?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: responsiveFontSize(context, 15),
                    ),
                  ),
                  TextButton(
                    onPressed: handleButtonClick,
                    child: Text(
                      "Resend in $_startSeconds",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight(context) * 0.04),

              // submit button
              CustomButton(text: "Verify", onPressed: submitOTP),
            ],
          ),
        ),
      ),
    );
  }
}
