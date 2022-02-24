import 'package:flutter/material.dart';

class Product {
  // final int id;
  // final String title, description;
  final String productName, productImage;
  final double productPrice;
  //  productModel;

  // final List<String> images;
  // final List<Color> colors;
  // final bool isFavourite, isPopular;

  Product({
    // required this.id,
    // required this.images,
    // required this.colors,
    // this.rating = 0.0,
    // this.isFavourite = false,
    // this.isPopular = false,
    required this.productName,
    required this.productImage,
    // required this.productModel,
    required this.productPrice,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 1.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 2.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 3.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 4.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 5.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 6.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 7.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 8.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 9.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 10.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 11.0,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 12.0,
  ),
  // Product(
  //   productImage: "assets/images/products/P1.png",
  //   productName: "Wireless Controller for PS4™",
  //   productPrice: 30.00,
  // ),
  // Product(
  //   productImage: "assets/images/products/P1.png",
  //   productName: "Wireless Controller for PS4™",
  //   productPrice: 25.00,
  // ),
  // Product(
  //   productImage: "assets/images/products/P1.png",
  //   productName: "Wireless Controller for PS4™",
  //   productPrice: 15.00,
  // ),
  // Product(
  //   productImage: "assets/images/products/P1.png",
  //   productName: "Wireless Controller for PS4™",
  //   productPrice: 10.00,
  // ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
