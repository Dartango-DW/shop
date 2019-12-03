import 'package:flutter/material.dart';
import 'package:shop/src/data/dummy_data/dummy_product.dart';
import 'package:shop/src/providers/product.dart';

class Products with  ChangeNotifier {
  List<Product> _items = dummyProducts;
  

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoritesItems {
    return _items.where((prod) => prod.isFavorite).toList();
  }


  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}