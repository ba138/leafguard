import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/auth_views/signup_screen.dart';
import 'package:leafguard/views/widget/common_image_view.dart';
import 'package:leafguard/views/widget/my_button.dart';
import 'package:leafguard/views/widget/my_google_button.dart';
import 'package:leafguard/views/widget/my_text.dart';
import 'package:leafguard/views/widget/my_textfield.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonImageView(
                imagePath: 'images/logo.png',
                height: 120,
                width: 120,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
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
                      MyTextField(label: 'Email', hint: 'Enter your email'),
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
                          text: 'Forgot Password?',
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 40),
                      MyButton(text: 'Login', onPressed: () {}),
                      const SizedBox(height: 12),
                      MyGoogleButton(
                        title: 'Continue with Google',
                        path: 'images/google.png',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(child: Divider(color: AppColors.primary)),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: MyText(text: 'OR', color: AppColors.primary),
                          ),
                          Expanded(child: Divider(color: AppColors.primary)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Don't have an account?",
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 4),
                          MyText(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ),
                              );
                            },
                            text: 'Sign Up',
                            color: AppColors.primary,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
