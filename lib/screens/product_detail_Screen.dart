import 'package:flutter/material.dart';
import 'package:my_shop/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProductTitle =
        Provider.of<Products>(context,listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProductTitle.title),
      ),
      body: Container(),
    );
  }
}
