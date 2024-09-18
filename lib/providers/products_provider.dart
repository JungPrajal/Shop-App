import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier{

    List<Product> availProduct = [
    Product(
        id: '1',
        title: "Iphone 11 pro max",
        description: "iphone 11",
        image: "assets/11pro.jpg",
        price: 1200),
    Product(
        id: '2',
        title: "Iphone 11 pro max",
        description: "iphone 11pro max",
        image: "assets/11pro.jpg",
        price: 1200),
    Product(
        id: '3',
        title: "Iphone 15 pro max",
        description: "iphone 15",
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
 
}