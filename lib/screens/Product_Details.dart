import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  static const id = '/ProductDetails';
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
      ),
    );
  }
}
