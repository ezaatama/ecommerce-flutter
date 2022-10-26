// ignore_for_file: sort_child_properties_last

import 'dart:io';

import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconSuffixButton extends StatelessWidget {
  const IconSuffixButton(
      {Key? key, required this.isObscure, required this.onPressed})
      : super(key: key);

  final bool isObscure;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return CupertinoButton(
        child: Icon(
          isObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye_solid,
          color: ColorUI.LIGHT_PRIMARY_2,
        ),
        onPressed: onPressed,
      );
    } else {
      return IconButton(
        icon: Icon(
          isObscure ? Icons.visibility_off : Icons.visibility,
        ),
        onPressed: onPressed,
      );
    }
  }
}
