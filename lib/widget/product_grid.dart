import 'package:flutter/material.dart';
import 'package:my_shop/providers/products.dart';
import 'package:my_shop/widget/product_item.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    print(products);
    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) => ProductItem(
              id: products[index].id,
              title: products[index].title,
              imageUrl: products[index].imageUrl),
          itemCount: products.length,
          padding: EdgeInsets.all(10.0),
        ));
  }
}
