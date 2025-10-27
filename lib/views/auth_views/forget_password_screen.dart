import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/widget/common_image_view.dart';
import 'package:leafguard/views/widget/my_button.dart';
import 'package:leafguard/views/widget/my_text.dart';
import 'package:leafguard/views/widget/my_textfield.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // ✅ prevents widgets from disappearing
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CommonImageView(
              imagePath: 'images/logo.png',
              height: 120,
              width: 120,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), // Glass blur
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.2),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: constraints.maxHeight,
                              ),
                              child: IntrinsicHeight(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.06,
                                    ),
                                    MyText(
                                      text: 'Forgot Password',
                                      size: 24,
                                      weight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                    MyText(
                                      text:
                                          'Please enter your registered email to reset your password',
                                      size: 16,
                                      color: AppColors.primary,
                                    ),
                                    const SizedBox(height: 24),

                                    MyTextField(
                                      label: 'Email',
                                      hint: 'Enter your email',
                                    ),

                                    const SizedBox(height: 40),
                                    MyButton(
                                      text: 'Reset Password',
                                      onPressed: () {
                                        // handle reset logic here
                                      },
                                    ),

                                    const SizedBox(height: 20),
                                    Align(
                                      alignment: Alignment.center,
                                      child: MyText(
                                        onTap: () => Navigator.pop(context),
                                        text: 'Back to Login',
                                        color: AppColors.primary,
                                        weight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
