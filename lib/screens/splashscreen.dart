import 'dart:async';

import 'package:brand_marketplace_app/screens/onboarding_screen.dart';
import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUI.DARK_PRIMARY_1,
      body: Center(
        child: Text("SHOESLY",
            style: WHITE_TEXT_STYLE.copyWith(
                fontSize: 24, fontWeight: FontUI.WEIGHT_SEMIBOLD)),
      ),
    );
  }
}
