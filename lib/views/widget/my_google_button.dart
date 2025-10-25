import 'package:flutter/material.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/widget/common_image_view.dart';

class MyGoogleButton extends StatelessWidget {
  final String path;
  final VoidCallback onPressed;
  final String title;
  const MyGoogleButton({
    super.key,
    required this.path,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.transparent,
          border: Border.all(color: AppColors.primary),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(imagePath: path, height: 24, width: 24),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
