import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/models/productModel.dart';
import 'package:task5/providers/cartProvider.dart';

class CartWidget extends StatelessWidget {
  final ProductModel? product;
  CartWidget({
    @required this.product,
    
    }
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
      child: Padding(padding: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(child: FittedBox(child: Text('${product!.price!}  LE')),),
        title: Text(product!.title!),
        subtitle: Text('Total : ${product!.price!} LE'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: (){
             Provider.of<CartProvider>(context,listen: false).removeFromCart(product!);
          },
        ),
       
      ),),
      
    );
  }
}