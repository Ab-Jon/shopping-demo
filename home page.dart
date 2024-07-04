import 'package:flutter/material.dart';
import 'package:shopping_demo/screens/product%20screen.dart';

import 'checkout screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    ProductScreen(),
    CheckoutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping App'),
        ),
        body: _tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items:[
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Product'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout),
                label: 'Checkout')
          ],),
    );
  }
}
