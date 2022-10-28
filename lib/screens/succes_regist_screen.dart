import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:brand_marketplace_app/widgets/button_black.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessRegistScreen extends StatelessWidget {
  const SuccessRegistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(18, 40, 18, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 2,
                child: SvgPicture.asset("assets/images/success_regist.svg")),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text("Welcome To The Club of Shoesly",
                    textAlign: TextAlign.center,
                        style: PRIMARY_TEXT_STYLE.copyWith(
                            fontSize: 34, fontWeight: FontUI.WEIGHT_BOLD)),
                    const SizedBox(height: 10),
                    Text("Your account success created! Please login.",
                        style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                            fontSize: 16, fontWeight: FontUI.WEIGHT_LIGHT)),
                  ],
                )),
            ButtonBlack(onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
            }, text: "LET'S SEARCH SHOES")
          ],
        ),
      ),
    );
  }
}
