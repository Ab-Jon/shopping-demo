import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_demo/widgets/cart%20item.dart';

import '../models/cart.dart';


class CheckoutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (BuildContext context, int index)
                => CartPdt(
                    cart.items.values.toList()[index].id,
                    cart.items.keys.toList()[index],
                    cart.items.values.toList()[index].price,
                    cart.items.values.toList()[index].name,
                    cart.items.values.toList()[index].quantity,)),
          ),
          ElevatedButton(onPressed: () {
            cart.clear();
          },
            child: Text('Checkout', style: TextStyle(color: Colors.white),)
          )],
      ),
    );
  }
}
