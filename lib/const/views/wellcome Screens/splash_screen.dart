import 'package:flutter/material.dart';
import 'package:leafguard/const/views/widget/common_image_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonImageView(
          imagePath: 'images/logo.png',
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
