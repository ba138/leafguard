import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leafguard/const/colors.dart';
import 'package:leafguard/views/wellcome%20Screens/splash_screen.dart';

// your splash screen

void main() {
  // ✅ ProviderScope should wrap the whole app
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColors.primary,
      ),
      home: const SplashScreen(),
    );
  }
}
