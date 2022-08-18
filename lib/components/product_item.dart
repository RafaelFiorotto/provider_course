import 'package:flutter/material.dart';
import 'package:provider_course/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(product.imageUrl),
    );
  }
}
