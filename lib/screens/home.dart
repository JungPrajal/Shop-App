import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Product> availProduct = [
    Product(id: '1', title: "Apple", description: "iphone 11", image: image, price: 1200)
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}