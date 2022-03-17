import 'package:flutter/material.dart';
import 'package:task5/models/productModel.dart';
import 'package:provider/provider.dart';
import 'package:task5/providers/cartProvider.dart';
import 'package:task5/providers/favProvider.dart';
import 'package:task5/providers/productProvider.dart';

class ProductWidget extends StatefulWidget {
  ProductModel? product;
  ProductWidget(this.product);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Image.network(widget.product!.image!),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                             Provider.of<FavProvider>(context, listen: false)
                              .addRemoveFav(widget.product!);
                          });
                         
                        },
                        child: Icon(
                          Icons.favorite_sharp,
                          color: widget.product!.fav == true
                              ? Colors.red
                              : Colors.black45,
                          size: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListTile(
                  title: Text(
                    widget.product!.title!,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    '${widget.product!.price!}\$',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(widget.product!);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
