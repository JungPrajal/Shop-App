import 'package:flutter/material.dart';

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
    return GridTile(
      child: Image.asset(image),
      footer: GridTileBar(),
    );
  }
}
