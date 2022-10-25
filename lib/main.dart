import 'package:brand_marketplace_app/screens/splashscreen.dart';
import 'package:brand_marketplace_app/utils/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(appRoute: AppRoute()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRoute}) : super(key: key);

  final AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brand App',
      onGenerateRoute: appRoute.onGenerateRoute,
    );
  }
}