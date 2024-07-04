import 'package:flutter/material.dart';

class CartPdt extends StatelessWidget{

  final String id;
  final String ProductId;
  final String price;
  final String name;
  final int quantity;

  CartPdt(this.id, this.ProductId, this.price, this.name, this.quantity,);

  @override
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: FittedBox(
            child: Text('\$$price'),
          ),
        ),
        title: Text(name),
        subtitle: Text('Total: \$${(price)}'),
        trailing: Text('$quantity'),
      ),
    );
  }
}