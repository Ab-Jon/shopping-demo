
import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imagePath;
  final String price;

  Product({required this.id,
    required this.category,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price
});


}

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
        id: '1',
        name: 'Italian Cover',
        description: 'A solid black shoe made in italy',
        price: '25000.00',
        imagePath: 'lib/product images/italian.jfif',
        category: ''
    ),
    Product(
        id: '2',
        name: 'Belgium shoe',
        description: 'A solid black fairly used shoe',
        price: '12000.00',
        imagePath: 'lib/product images/blgium.jfif',
        category: ''
    ),
    Product(
        id: '3',
        name: 'Slippers',
        description: 'A simple one to rock',
        price: '5000.00',
        imagePath: 'lib/product images/slippers.jfif',
        category: ''
    ),
    Product(
        id: '4',
        name: 'Sneakers',
        description: 'The perfect friday wear',
        price: '7000.00',
        imagePath: 'lib/product images/sneakers.jfif',
        category: ''
    ),
    Product(
        id: '5',
        name: 'Leather sandals',
        description: 'Made from solid brown leather',
        price: '20000.00',
        imagePath: 'lib/product images/leather sandals.jfif',
        category: ''
    )
  ];
  List<Product> get items {
    return [..._items];
  }
}