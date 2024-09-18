import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/products_provider.dart';
import 'package:shopapp/widgets/GridProductItem.dart';

class HomePage extends StatelessWidget {
  static const id = '/HomePage';
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Jk Electronics",
            style: TextStyle(
              fontSize: 25,
              color: Colors.cyanAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: ProductsGrid(),
      ),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final availProduct = productData.availProducts;

    return availProduct.isEmpty
        ? Center(
            child: Text(
              "No products available!",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          )
        : GridView.builder(
            itemCount: availProduct.length,
            itemBuilder: (context, index) {
              return GridProductItem(
                id: availProduct[index].id,
                title: availProduct[index].title,
                image: availProduct[index].image,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.7,
            ),
          );
  }
}
