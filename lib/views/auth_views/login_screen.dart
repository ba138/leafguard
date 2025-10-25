import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leafguard/const/colors.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            CommonImageView(
              imagePath: 'images/logo.png',
              height: 120,
              width: 120,
            ),
            Expanded(child: SizedBox()),
            Container(
              height: MediaQuery.of(context).size.height * 0.78,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  // topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SingleChildScrollView(
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
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
                        path: 'images/google.png',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: AppColors.primary,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: MyText(text: 'OR', color: AppColors.primary),
                          ),
                          Expanded(
                            child: Divider(
                              color: AppColors.primary,
                              thickness: 1,
                            ),
                          ),
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
                          SizedBox(width: 4),
                          MyText(
                            text: 'Sign Up',
                            color: AppColors.primary,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
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
