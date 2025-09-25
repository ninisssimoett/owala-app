import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';

final List<ProductsModel> products = [
  ProductsModel(
    id: 1,
    title: "New Balance 574 Core",
    price: 1499000,
    size: 40,
    description: "A classic casual sneaker with an iconic design.",
    image: "assets/images/drinkware/sp1.png",
    color: const Color(0xFFF8F5F0), // warm light beige
  ),

  ProductsModel(
    id: 2,
    title: "New Balance 990v6",
    price: 2999000,
    size: 42,
    description: "Performance running shoes with premium cushioning.",
    image: "assets/images/drinkware/sp2.png",
    color: const Color(0xFFEAEAEA), // cool grey
  ),

  ProductsModel(
    id: 3,
    title: "New Balance Fresh Foam X",
    price: 2399000,
    size: 41,
    description: "Equipped with a Fresh Foam X midsole, designed for comfort.",
    image: "assets/images/drinkware/sp3.png",
    color: const Color(0xFFEAF3FF), 
  ),

  ProductsModel(
    id: 4,
    title: "New Balance 327",
    price: 1599000,
    size: 39,
    description: "Retro-inspired running shoes with a unique design.",
    image: "assets/images/drinkware/sp4.png",
    color: const Color(0xFFFFF1F3), 
  ),

  ProductsModel(
    id: 5,
    title: "New Balance 2002R",
    price: 2299000,
    size: 43,
    description: "A lifestyle running sneaker with early 2000s design.",
    image: "assets/images/drinkware/sp5.png",
    color: const Color(0xFFFAF6F0), 
  ),

  ProductsModel(
    id: 6,
    title: "New Balance 530",
    price: 1799000,
    size: 40,
    description: "Retro sneakers with ABZORB cushioning.",
    image: "assets/images/drinkware/sp6.png",
    color: const Color(0xFFEDF6FA), 
  ),
];
