class DataBanner {
  String image;
  String promo;
  String title;
  String price;

  DataBanner({
    required this.image,
    required this.promo,
    required this.title,
    required this.price
  });
}

List<DataBanner> dataBanner = [
  DataBanner(image: 'assets/images/shoes_1.png', promo: 'NEW', title: 'Nike Air Max 98', price: '89.99'),
  DataBanner(image: 'assets/images/shoes_2.png', promo: 'NEW', title: 'Nike Air Force 1 QS high-top', price: '125'),
  DataBanner(image: 'assets/images/shoes_3.png', promo: 'Exclusive', title: 'Nike Dunk High Retro Sneakers', price: '156'),
  DataBanner(image: 'assets/images/shoes_4.png', promo: 'Exclusive', title: 'Centennial 85 HI Shoes', price: '89.99')
];