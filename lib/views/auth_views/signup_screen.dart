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
      resizeToAvoidBottomInset: true, // ✅ prevents disappearing widgets
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            CommonImageView(
              imagePath: 'images/logo.png',
              height: 80,
              width: 80,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
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
                                SizedBox(height: 40),
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
                                SizedBox(height: 12),

                                MyTextField(
                                  label: 'Username',
                                  hint: 'Enter username',
                                ),
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
                                MyTextField(
                                  label: 'Confirm Password',
                                  hint: 'Re-enter your password',
                                  isObSecure: true,
                                  suffix: InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.visibility_off),
                                  ),
                                ),

                                SizedBox(height: 20),
                                MyButton(text: 'Sign Up', onPressed: () {}),
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
                                        thickness: 1,
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
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),

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
          ],
        ),
      ),
    );
  }
}
