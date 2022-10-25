import 'dart:async';

import 'package:brand_marketplace_app/models/onboarding_models.dart';
import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:brand_marketplace_app/widgets/button_black.dart';
import 'package:brand_marketplace_app/widgets/button_white.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  final List<SplashData> _splashData = [
    SplashData(
        image: "assets/images/marketplace.svg",
        title: "Enjoy The New Arrival Product",
        description:
            "Get your dream item easily and safely with Shoesly and get other interesting offers"),
    SplashData(
        image: "assets/images/marketplace2.svg",
        title: "Guaranteed Safe Delivery",
        description:
            "Get your dream item easily and safely with Shoesly and get other interesting offers"),
    SplashData(
        image: "assets/images/marketplace3.svg",
        title: "Goods Arrived On Time",
        description:
            "Get your dream item easily and safely with Shoesly and get other interesting offers")
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUI.WHITE,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(18, 40, 18, 0),
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: PageView.builder(
                        controller: _controller,
                        itemCount: _splashData.length,
                        onPageChanged: (value) {
                          setState(() {
                            _currentPage = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          SplashData row = _splashData[index];
                          return Column(
                            children: [
                              SvgPicture.asset(row.image,
                                  fit: BoxFit.cover, height: 200, width: 200),
                              const SizedBox(height: 100),
                              Column(
                                children: [
                                  Text(
                                    row.title,
                                    style: PRIMARY_TEXT_STYLE.copyWith(
                                      fontSize: 34,
                                      fontWeight: FontUI.WEIGHT_BOLD,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    row.description,
                                    style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontUI.WEIGHT_MEDIUM,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 60),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  _splashData.length,
                                  (index) => _buildDot(index: index),
                                ),
                              ),
                            ],
                          );
                        })),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ButtonBlack(onPressed: () {}, text: "Get Started"),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: ButtonWhite(
                                  onPressed: () {},
                                  icon: "assets/icons/facebook.png",
                                  text: "FACEBOOK"),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              flex: 2,
                              child: ButtonWhite(
                                  onPressed: () {},
                                  icon: "assets/icons/google.png",
                                  text: "GOOGLE"),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }

  AnimatedContainer _buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.only(right: 8),
      height: 4,
      width: _currentPage == index ? 60 : 30,
      decoration: BoxDecoration(
          color: _currentPage == index
              ? ColorUI.DARK_PRIMARY_1
              : ColorUI.LIGHT_PRIMARY_3,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
