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
    productPrice: 60.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 20.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 40.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 50.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 87.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 75.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 98.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 9.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 85.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 80.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 45.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 35.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 30.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 25.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 15.00,
  ),
  Product(
    productImage: "assets/images/products/P1.png",
    productName: "Wireless Controller for PS4™",
    productPrice: 10.00,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
