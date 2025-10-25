import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leafguard/views/auth_views/login_screen.dart';

final splashProvider = Provider<SplashProvider>((ref) => SplashProvider(ref));

class SplashProvider {
  final Ref ref;
  SplashProvider(this.ref);
  void manageSession(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (route) => false,
      );
    });
    // Initialization logic for splash screen can be added here
  }
}
