import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product_model.dart';

class Products with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Alma',
        description: 'Siz ucin ter Almany amatly bahadan bizin markedimizde tapyp bilersiniz',                             
        price: 5.30,
        imageUrl: Image.asset('assets/images/apple.png',)),
    Product( 
        id: 'p2',
        title: 'Banan',
        description: 'Siz ucin ter Banany amatly bahadan bizin markedimizde tapyp bilersiniz ',                              
        price: 6.40, 
        imageUrl: Image.asset('assets/images/apple.png',)),
    Product(
        id: 'p3',
        title: 'Uzum',
        description: 'Siz ucin ter uzimi amatly bahadan bizin markedimizde tapyp bilersiniz',
        price: 10.50,
        imageUrl: Image.asset('assets/images/apple.png',)),
    Product(
        id: 'p4',
        title: 'Kiwi',
        description: 'Siz ucin ter Kiwini amatly bahadan bizin markedimizde tapyp bilersiniz',
        price: 25.30,
        imageUrl: Image.asset('assets/images/kiwi.png',)),
    Product(
        id: 'p5',
        title: 'Nohut',
        description: 'Siz ucin ter Nohudy amatly bahadan bizin markedimizde tapyp bilersiniz',                             
        price: 21.30,
        imageUrl: Image.asset('assets/images/kiwi.png',)),
    Product( 
        id: 'p6',
        title: 'Pomidor',
        description: 'Siz ucin ter Pomidory amatly bahadan bizin markedimizde tapyp bilersiniz',                              
        price: 3.50, 
        imageUrl: Image.asset('assets/images/kiwi.png',)),
  ];

  List card = [];
  cardvalui(_sozler) {
    card.add(_sozler);
    notifyListeners();
  }

  checkIFProductToCard(productID) {
    if (card.length > 0) {
      var result = card.where((element) => element.id == productID);
      if (result.isEmpty) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  deleteproductfromCart(productId) {
    card.removeWhere((element) => element.id == productId);
    //print(card.toString());
    notifyListeners();
  }

  deleteproductfromFavorite(productId) {
    card.removeWhere((element) => element.id == productId);
    //print(card.toString());
    notifyListeners();
  }


  String _searchString = "";

  UnmodifiableListView<Product> get sozler => _searchString.isEmpty
      ? UnmodifiableListView(_items)
      : UnmodifiableListView(
          _items.where((soz) => soz.title.contains(_searchString)));

  void changeSearchString(String searchString) {
    _searchString = searchString;
    print(_searchString);
    notifyListeners();
  }

  //var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // } 
    return [..._items];  
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners(); 
  // }

  void addProduct() {
   // _items.add(value);
    notifyListeners();
  }


  
}