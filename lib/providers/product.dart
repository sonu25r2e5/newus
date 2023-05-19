import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {required this.id,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.title,
      this.isFavorite = false});

  void togglefavoritestatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
