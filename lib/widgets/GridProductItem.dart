import 'package:flutter/material.dart';
import 'package:shopapp/screens/Product_Details.dart';

class GridProductItem extends StatelessWidget {
  const GridProductItem({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String id;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            // Add your tap handler logic here, for example:
            Navigator.of(context).pushNamed(ProductDetails.id, arguments: id);
          },
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {
              // Add logic for favorite button tap
            },
            icon: const Icon(Icons.favorite),
          ),
          trailing: IconButton(
            onPressed: () {
              // Add logic for shopping bag button tap
            },
            icon: const Icon(Icons.shopping_bag),
          ),
        ),
      ),
    );
  }
}
