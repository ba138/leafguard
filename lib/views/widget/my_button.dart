import 'package:flutter/material.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/widget/my_text.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const MyButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primary,
        ),
        child: Center(
          child: MyText(
            text: text,
            size: 18,
            color: AppColors.secondary,
            weight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
