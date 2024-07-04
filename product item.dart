import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/products.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;
  final String price;

  ProductItem({required this.name, required this.imagePath, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return Padding(
        padding: const EdgeInsets.all(10.0),
    child: Card(
    elevation: 10.0,
    margin: EdgeInsets.all(8.0),
    child: Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    height: 300,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
    children: [
    Image(image: AssetImage(imagePath),
    height: 180,),
    Text(name,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20),),
    Text(description,
    style: TextStyle(fontSize: 15),),
    SizedBox(height: 15,),
      ListTile(
        leading: Text(price,
          style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold),),
        trailing: IconButton(iconSize: 50,
            icon: Icon(Icons.shopping_cart),
            color: Colors.blue,
            onPressed: () {
              cart.addItem(pdt.id, pdt.name, pdt.price);
            }),
      )],)
    )
    )
    );
  }
}
