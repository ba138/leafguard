import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leafguard/views/widget/common_image_view.dart';
import 'package:leafguard/providers/splash_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    final splashProv = ref.read(splashProvider);
    splashProv.manageSession(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonImageView(
          imagePath: 'images/logo.png',
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
