import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:flutter/material.dart';

class BrandsCategory extends StatelessWidget {
  const BrandsCategory({Key? key, required this.onTap, required this.image, required this.title, required this.items}) : super(key: key);

  final Function() onTap;
  final String image;
  final String title;
  final String items;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: ColorUI.LIGHT_PRIMARY_3, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(image),
                  ),
                ),
                const SizedBox(height: 10),
                Text(title, style: PRIMARY_TEXT_STYLE.copyWith(fontWeight: FontUI.WEIGHT_BOLD, fontSize: 14), textAlign: TextAlign.center, maxLines: 1,),
                Text(items, style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(fontWeight: FontUI.WEIGHT_LIGHT, fontSize: 12)),
              ],
        ),
      ),
    );
  }
}
