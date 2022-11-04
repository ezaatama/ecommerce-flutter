import 'package:flutter/material.dart';

Widget bottomNav(String icon, GestureTapCallback cb, bool isActive) {
  String imageAsset =
      'assets/icons/' + (isActive ? '${icon}_blc' : icon) + '.png';

  return Theme(
      data: ThemeData(
          splashColor: Colors.transparent, highlightColor: Colors.transparent),
      child: InkWell(
        onTap: cb,
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Image.asset(imageAsset, width: 20, height: 20)],
          ),
        ),
      ));
}
