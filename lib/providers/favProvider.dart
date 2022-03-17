import 'package:flutter/material.dart';
import 'package:task5/models/productModel.dart';

class FavProvider extends ChangeNotifier {
  List<ProductModel> favProducts = [];

  void addRemoveFav(ProductModel product) {
    product.fav = !product.fav;

    if (product.fav == true) {
      favProducts.insert(0, product);
      notifyListeners();
    } else if (product.fav == false) {
      favProducts.remove(product);
      notifyListeners();
    }
  }
}
