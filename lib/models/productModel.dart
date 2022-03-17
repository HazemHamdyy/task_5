import 'package:flutter/material.dart';

class ProductModel {
  static int currentID = 0;
  int? id = currentID;
  String? title;
  double? price;
  String? image;
  String? description;
  bool fav = false;

  ProductModel({
    
    @required this.title,
    @required this.price,
    @required this.image,
    @required this.description,
  }) {
    currentID = currentID + 1;
  }
}
