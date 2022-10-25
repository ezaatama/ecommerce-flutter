import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:flutter/material.dart';

class ButtonWhite extends StatelessWidget {
  const ButtonWhite(
      {Key? key, required this.onPressed, this.icon, required this.text, this.margin})
      : super(key: key);

  final String text;
  final String? icon;
  final Function() onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: ColorUI.WHITE,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: ColorUI.DARK_PRIMARY_1),
            borderRadius: BorderRadius.circular(14)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon!, fit: BoxFit.cover, width: 20, height: 20),
            const SizedBox(width: 5),
            Text(
              text,
              style: PRIMARY_TEXT_STYLE.copyWith(
                fontSize: 16,
                fontWeight: FontUI.WEIGHT_SEMIBOLD
              ),
      ),
          ],
        )),
    );
  }
}
