import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/providers/favProvider.dart';
import 'package:task5/widgets/productWidget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<FavProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('favorite Products'),
        
      ),
      body: ListView.builder(
      
      
        itemCount: fav.favProducts.length,
        itemBuilder: (context,index){
          return ProductWidget(fav.favProducts[index]);
        }),
      
    );
  }
}