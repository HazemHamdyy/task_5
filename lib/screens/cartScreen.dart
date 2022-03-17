import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/providers/cartProvider.dart';
import 'package:task5/widgets/cartWidget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Products'),
        
      ),
      body: ListView.builder(
      
      
        itemCount: cart.cartProducts.length,
        itemBuilder: (context,index){
          return CartWidget(product: cart.cartProducts[index]);
        }),
      
    );
  }
}