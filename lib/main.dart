import 'package:flutter/material.dart';
import 'package:task5/providers/cartProvider.dart';
import 'package:task5/providers/favProvider.dart';
import 'package:task5/providers/productProvider.dart';
import 'package:task5/screens/cartScreen.dart';
import 'package:task5/screens/detailsScreen.dart';
import 'package:task5/screens/favoriteScreen.dart';
import 'package:task5/screens/homeScreen.dart';
import 'package:task5/screens/loginPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider<FavProvider>(
      create: (context) => FavProvider(),),
        ChangeNotifierProvider<CartProvider>(
      create: (context) => CartProvider(),),
         ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),)

      ],
      child: MaterialApp(
      routes: {
        'login': (context) => LoginPage(),
        'main': (context) => MainPage(),
        'details': (context) => DetailsScreen(),
      },
      home: MainPage(),
      // initialRoute: 'main',
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List body = [HomeScreen(), FavoriteScreen(), CartScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        iconSize: 40,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'fav',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'cart',
            icon: Icon(
              Icons.shopping_basket,
            ),
          ),
        ],
      ),
    );
  }
}
