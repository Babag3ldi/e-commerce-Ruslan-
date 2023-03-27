import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final Image imageUrl;
  final double newprice;
  final num skitga;
  bool isFavorite;

  Product({
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isFavorite = false,
      required this.newprice, 
      required this.skitga, 
      });

  // void toggleFavoriteStatus() {
  //   isFavorite = !isFavorite;
  //   notifyListeners();
  // }

  // void changeSearchString(String value) {}
}
