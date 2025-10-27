import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/auth_views/forget_password_screen.dart';
import 'package:leafguard/views/auth_views/signup_screen.dart';
import 'package:leafguard/views/widget/common_image_view.dart';
import 'package:leafguard/views/widget/my_button.dart';
import 'package:leafguard/views/widget/my_google_button.dart';
import 'package:leafguard/views/widget/my_text.dart';
import 'package:leafguard/views/widget/my_textfield.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // ✅ prevents overflow
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            CommonImageView(
              imagePath: 'images/logo.png',
              height: 120,
              width: 120,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), // Glass blur
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.secondary, // translucent
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.2),
                        width: 1.5, // subtle white border
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
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
                                      text: 'Welcome Back',
                                      size: 24,
                                      weight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                    MyText(
                                      text: 'Please login to your account',
                                      size: 16,
                                      color: AppColors.primary,
                                    ),
                                    SizedBox(height: 24),
                                    MyTextField(
                                      label: 'Email',
                                      hint: 'Enter your email',
                                    ),
                                    MyTextField(
                                      label: 'Password',
                                      hint: 'Enter your password',
                                      isObSecure: true,
                                      suffix: InkWell(
                                        onTap: () {},
                                        child: Icon(Icons.visibility_off),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: MyText(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgetPasswordScreen(),
                                            ),
                                          );
                                        },
                                        text: 'Forgot Password?',
                                        color: AppColors.primary,
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    MyButton(text: 'Login', onPressed: () {}),
                                    SizedBox(height: 12),
                                    MyGoogleButton(
                                      title: 'Continue with Google',
                                      path: 'images/google.png',
                                      onPressed: () {},
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            color: AppColors.primary,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                          ),
                                          child: MyText(
                                            text: 'OR',
                                            color: AppColors.primary,
                                          ),
                                        ),
                                        Expanded(
                                          child: Divider(
                                            color: AppColors.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyText(
                                          text: "Don't have an account?",
                                          color: AppColors.primary,
                                        ),
                                        SizedBox(width: 4),
                                        MyText(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SignupScreen(),
                                              ),
                                            );
                                          },
                                          text: 'Sign Up',
                                          color: AppColors.primary,
                                          weight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
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
