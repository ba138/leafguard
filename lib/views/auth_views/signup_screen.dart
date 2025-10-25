import 'package:flutter/material.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/widget/common_image_view.dart';
import 'package:leafguard/views/widget/my_button.dart';
import 'package:leafguard/views/widget/my_google_button.dart';
import 'package:leafguard/views/widget/my_text.dart';
import 'package:leafguard/views/widget/my_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonImageView(
              imagePath: 'images/logo.png',
              height: 80,
              width: 80,
            ),
            Expanded(child: SizedBox()),
            Container(
              height: MediaQuery.of(context).size.height * 0.83,
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
                        text: 'Welcome Onboard',
                        size: 20,
                        weight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                      MyText(
                        text: 'Please Create your account',
                        size: 14,
                        color: AppColors.primary,
                      ),
                      SizedBox(height: 8),
                      MyTextField(label: 'Username', hint: 'Enter username'),

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
                      MyTextField(
                        label: 'Confirm Password',
                        hint: 'Re-enter your password',
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
                      const SizedBox(height: 20),
                      MyButton(text: 'Sign Up', onPressed: () {}),
                      const SizedBox(height: 8),

                      MyGoogleButton(
                        title: 'Continue with Google',
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
                            text: "Already have an account?",
                            color: AppColors.primary,
                          ),
                          SizedBox(width: 4),
                          MyText(
                            onTap: () => Navigator.pop(context),
                            text: 'Sign In',
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
