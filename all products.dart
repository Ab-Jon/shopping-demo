import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_demo/models/products.dart';
import 'package:shopping_demo/widgets/product%20item.dart';


class AllProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final product_s = productData.items;
    return ListView.builder(
        itemCount: product_s.length,
        itemBuilder: (BuildContext context, int index)
        => ChangeNotifierProvider.value(value: product_s[index],
        child: ProductItem(name: product_s[index].name,
            imagePath: product_s[index].imagePath,
            description: product_s[index].description, price: product_s[index].price,)
        )
    );
  }
}
