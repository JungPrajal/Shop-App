import 'package:flutter/material.dart';
import 'package:shopapp/screens/Product_Details.dart';
import 'package:shopapp/screens/home.dart';
import 'package:shopapp/widgets/GridProductItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        ProductDetails.id: (context) => ProductDetails(),
        HomePage.id: (context)=> HomePage(),
      },
    );
  }
}
