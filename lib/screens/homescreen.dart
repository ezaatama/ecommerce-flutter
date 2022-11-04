import 'dart:async';

import 'package:brand_marketplace_app/models/banner_models.dart';
import 'package:brand_marketplace_app/models/special_product_models.dart';
import 'package:brand_marketplace_app/utils/constant.dart';
import 'package:brand_marketplace_app/widgets/brands_category.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  final _controllerSearch = TextEditingController();
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      _currentPage++;
      if (_currentPage >= 4) {
        _currentPage = 0;
      }

      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: size.width,
        height: size.height,
        margin: const EdgeInsets.fromLTRB(16, 20, 16, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///search homescreen
              TextField(
                controller: _controllerSearch,
                textAlign: TextAlign.center,
                style: LIGHT_PRIMARY_TEXT_STYLE,
                decoration: InputDecoration(
                    hintText: "What are you looking for?",
                    hintStyle: LIGHT_PRIMARY_TEXT_STYLE,
                    prefixIcon: const Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          width: 1, color: ColorUI.LIGHT_PRIMARY_2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIconColor: ColorUI.DARK_PRIMARY_2),
                onChanged: (val) {},
              ),
              const SizedBox(height: 20),

              ///slider banner homescreen
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color(0xFFCD121F),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: PageView.builder(
                      controller: _controller,
                      itemCount: dataBanner.length,
                      onPageChanged: (value) {
                        setState(() {
                          _currentPage = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        DataBanner data = dataBanner[index];
                        return Stack(
                          children: [
                            Positioned(
                                top: 10,
                                right: 0,
                                left: 60,
                                child: Image.asset(
                                  data.image,
                                  width: 160,
                                  height: 160,
                                  color: Colors.white.withOpacity(0.5),
                                  colorBlendMode: BlendMode.modulate,
                                )),
                            Positioned(
                              top: 50,
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 69, 199, 22)),
                                      child: Text(
                                        data.promo,
                                        style: WHITE_TEXT_STYLE.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontUI.WEIGHT_SEMIBOLD),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(data.title,
                                        style: WHITE_TEXT_STYLE.copyWith(
                                            fontSize: 25,
                                            fontWeight:
                                                FontUI.WEIGHT_SEMIBOLD)),
                                    Text("\$ ${data.price} USD",
                                        style: WHITE_TEXT_STYLE.copyWith(
                                            fontSize: 16,
                                            fontWeight:
                                                FontUI.WEIGHT_SEMIBOLD)),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                        dataBanner.length,
                                        (index) => _buildDot(index: index),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ),
              const SizedBox(height: 25),

              ///brands category
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Brands",
                      style: PRIMARY_TEXT_STYLE.copyWith(
                          fontSize: 24, fontWeight: FontUI.WEIGHT_BOLD)),
                  InkWell(
                    onTap: () {},
                    child: Text("SEE All",
                        style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                            fontWeight: FontUI.WEIGHT_SEMIBOLD)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width,
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    BrandsCategory(
                        onTap: () {},
                        image: "assets/icons/icon_nike.png",
                        title: "NIKE",
                        items: "1001 Items"),
                    BrandsCategory(
                        onTap: () {},
                        image: "assets/icons/icon_puma.png",
                        title: "PUMA",
                        items: "601 Items"),
                    BrandsCategory(
                        onTap: () {},
                        image: "assets/icons/icon_adidas.png",
                        title: "ADIDAS",
                        items: "709 Items"),
                    BrandsCategory(
                        onTap: () {},
                        image: "assets/icons/icon_vans.png",
                        title: "VANS",
                        items: "555 Items"),
                    BrandsCategory(
                        onTap: () {},
                        image: "assets/icons/icon_jordan.png",
                        title: "AIR JORDAN",
                        items: "150 Items"),
                  ],
                ),
              ),

              ///special product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Special For You",
                      style: PRIMARY_TEXT_STYLE.copyWith(
                          fontSize: 24, fontWeight: FontUI.WEIGHT_BOLD)),
                  InkWell(
                    onTap: () {},
                    child: Text("SEE All",
                        style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                            fontWeight: FontUI.WEIGHT_SEMIBOLD)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: specialProduct
                      .map((e) => Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 300,
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            color: ColorUI.LIGHT_PRIMARY_3,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(e.brands,
                                                    color:
                                                        ColorUI.LIGHT_PRIMARY_2,
                                                    width: 30,
                                                    height: 30),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: ColorUI.WHITE,
                                                          shape:
                                                              BoxShape.circle),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Image.asset(
                                                        "assets/icons/icon_heart_white.png",
                                                        width: 15,
                                                        height: 15),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 15),
                                            Image.asset(e.image)
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      Text(e.title,
                                          style: PRIMARY_TEXT_STYLE.copyWith(
                                              fontWeight:
                                                  FontUI.WEIGHT_MEDIUM)),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/icons/icon_star.png",
                                            width: 15,
                                            height: 15,
                                          ),
                                          Text(e.rating,
                                              style:
                                                  PRIMARY_TEXT_STYLE.copyWith(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontUI.WEIGHT_BOLD)),
                                          const SizedBox(width: 10),
                                          Text(
                                            e.review,
                                            style: LIGHT_PRIMARY_TEXT_STYLE
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontUI.WEIGHT_MEDIUM),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Text(e.price,
                                          style: PRIMARY_TEXT_STYLE.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontUI.WEIGHT_BOLD)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),

              ///most popular product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most Popular",
                      style: PRIMARY_TEXT_STYLE.copyWith(
                          fontSize: 24, fontWeight: FontUI.WEIGHT_BOLD)),
                  InkWell(
                    onTap: () {},
                    child: Text("SEE All",
                        style: LIGHT_PRIMARY_TEXT_STYLE.copyWith(
                            fontWeight: FontUI.WEIGHT_SEMIBOLD)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }

  AnimatedContainer _buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.only(right: 8),
      height: 4,
      width: _currentPage == index ? 60 : 30,
      decoration: BoxDecoration(
          color: _currentPage == index
              ? ColorUI.LIGHT_PRIMARY_1
              : ColorUI.LIGHT_PRIMARY_3.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
