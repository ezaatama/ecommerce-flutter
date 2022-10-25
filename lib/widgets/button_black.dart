import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:flutter/material.dart';

class ButtonBlack extends StatelessWidget {
  const ButtonBlack(
      {Key? key, required this.onPressed, required this.text, this.margin})
      : super(key: key);

  final String text;
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
          primary: ColorUI.DARK_PRIMARY_1,
          padding: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14)
          )
        ),
        child: Text(
          text,
          style: WHITE_TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontUI.WEIGHT_SEMIBOLD
          ),
      )),
    );
  }
}
