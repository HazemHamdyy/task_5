import 'package:flutter/material.dart';
import 'package:task5/models/productModel.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> cartProducts =[];

  void addToCart(ProductModel product) {
    cartProducts.insert(0, product);
    notifyListeners();
  }
  void removeFromCart(ProductModel product) {
    cartProducts.remove(product);
  
    notifyListeners();
  }
}