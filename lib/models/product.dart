import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;
  bool isFavourite;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
    this.isFavourite = false,
  });

  void tooglefavourites() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
