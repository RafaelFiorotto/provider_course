import 'package:flutter/material.dart';
import 'package:provider_course/data/dummy_data.dart';
import 'package:provider_course/models/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducts;
  List<Product> get items => [..._items];

  voidAddProducts(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
