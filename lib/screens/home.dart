import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/widgets/GridProductItem.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Product> availProduct = [
    Product(
        id: '1',
        title: "Apple",
        description: "iphone 11",
        image: "assets/11pro.jpg",
        price: 1200),
    Product(
        id: '2',
        title: "Apple",
        description: "iphone 11pro max",
        image: "assets/11pro.jpg",
        price: 1200),
    Product(
        id: '3',
        title: "Apple",
        description: "iphone 14",
        image: 'assets/15pro.jpg',
        price: 1200),
    Product(
        id: '4',
        title: "Apple",
        description: "iphone 11",
        image: "assets/z6.jpg",
        price: 1200),
    Product(
        id: '5',
        title: "Samsung s",
        description: "Samsung s20 ultra",
        image: "assets/s20.jpg",
        price: 1200),
    Product(
        id: '6',
        title: "Samsung Z",
        description: "Samsung z6",
        image: "assets/z6.jpg",
        price: 1200),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: availProduct.length,
          itemBuilder: (context, index) {
            return GridProductItem(
                id: availProduct[index].id,
                title: availProduct[index].title,
                image: availProduct[index].image);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0, // Spacing between items horizontally
            mainAxisSpacing: 10.0, // Spacing between items vertically
            childAspectRatio: 0.7,
          ),
        ),
      ),
    );
  }
}
