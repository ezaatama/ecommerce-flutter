import 'package:brand_marketplace_app/screens/favorite_screen.dart';
import 'package:brand_marketplace_app/screens/homescreen.dart';
import 'package:brand_marketplace_app/screens/order_status_screen.dart';
import 'package:brand_marketplace_app/screens/product_screen.dart';
import 'package:brand_marketplace_app/screens/profile_screen.dart';
import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:brand_marketplace_app/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _setPage();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _setPage() {
    int initialPage = 0;

    _pageController = PageController(keepPage: false, initialPage: initialPage);

    if (initialPage > 0) {
      setState(() {
        _currentIndex = initialPage;
      });
    }
  }

  void _onPageChanged({required int page, int? historyTab}) {
    if (_pageController.hasClients) {
      _pageController.jumpToPage(page);
    }
    setState(() {
      _currentIndex = page;
      if (page == 1 && historyTab != null) {}
    });
  }

  List<Widget> _tabWidgets() {
    return [
      const Homescreen(),
      const ProductScreen(),
      const OrderStatusScreen(),
      const FavoriteScreen(),
      const ProfileScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    Widget home = Scaffold(
        backgroundColor: ColorUI.WHITE,
        body: SizedBox(
          child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (idx) {
                setState(() {
                  _currentIndex = idx;
                });
              },
              children: _tabWidgets()),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomNav('bottom_nav_home', () {
                  _onPageChanged(page: 0);
                }, _currentIndex == 0),
                bottomNav('bottom_nav_discover', () {
                  _onPageChanged(page: 1);
                }, _currentIndex == 1),
                bottomNav('bottom_nav_order', () {
                  _onPageChanged(page: 2);
                }, _currentIndex == 2),
                bottomNav('bottom_nav_favorite', () {
                  _onPageChanged(page: 3);
                }, _currentIndex == 3),
                bottomNav('bottom_nav_profile', () {
                  _onPageChanged(page: 4);
                }, _currentIndex == 4)
              ],
            ),
          ),
        ));

    return WillPopScope(child: home, onWillPop: () async => true);
  }
}
