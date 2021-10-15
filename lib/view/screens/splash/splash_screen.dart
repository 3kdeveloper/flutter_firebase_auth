import 'dart:async';

import 'package:flutter_firebase_auth/utils/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashDuration() {
    Timer(const Duration(seconds: 5), () {
      Get.off(() => const WelcomeScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    splashDuration();
  }

  @override
  void dispose() {
    super.dispose();
    splashDuration();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsPath.kLogo),
      ),
    );
  }
}
