import 'package:flutter/material.dart';
import 'package:task5/models/productModel.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> items = [
    ProductModel(
      
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      image:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    ProductModel(
        
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        image:
            'https://image.shutterstock.com/image-photo/light-grey-formal-mens-trousers-260nw-1096296503.jpg')
  ];
}