class SpecialProduct {
  String brands;
  bool favorite;
  String image;
  String title;
  String rating;
  String review;
  String price;

  SpecialProduct(
      {required this.brands,
      this.favorite = false,
      required this.image,
      required this.title,
      required this.rating,
      required this.review,
      required this.price});
}

List<SpecialProduct> specialProduct = [
  SpecialProduct(
      brands: "assets/icons/icon_nike.png",
      image: "assets/images/shoes_1.png",
      favorite: false,
      title: "Jordan | Retro High Tie Dye",
      rating: "4.5",
      review: "(1045 Reviews)",
      price: "\$235.00"),
  SpecialProduct(
      brands: "assets/icons/icon_nike.png",
      image: "assets/images/shoes_1.png",
      favorite: false,
      title: "Jordan | Retro High Tie Dye",
      rating: "4.5",
      review: "(1045 Reviews)",
      price: "\$235.00"),
  SpecialProduct(
      brands: "assets/icons/icon_nike.png",
      image: "assets/images/shoes_1.png",
      favorite: false,
      title: "Jordan | Retro High Tie Dye",
      rating: "4.5",
      review: "(1045 Reviews)",
      price: "\$235.00")
];
