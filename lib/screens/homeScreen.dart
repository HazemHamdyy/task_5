import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/providers/productProvider.dart';
import 'package:task5/widgets/productWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context,listen: true);
    return Scaffold(
      
      body: ListView.builder(
        itemCount: products.items.length,
        itemBuilder: (context, i) {
          return ProductWidget(products.items[i]);
        },
      ),
    );
  }
}