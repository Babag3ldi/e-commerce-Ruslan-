import 'dart:collection';

import 'package:flutter/material.dart';

import 'product_model.dart';

class ArzanProducts with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Alma',
        description: 'Corba naharlary resptleri',
        price: 5.30,
        newprice: 6.40,
        skitga: 18,
        imageUrl: Image.asset(
          'assets/images/apple.png',
        )),
    Product(
        id: 'p2',
        title: 'Banan',
        description: 'appbar: Appbar Scaffold: Body: Center name ',
        price: 6.40,
        newprice: 5.20,
        skitga: 10,
        imageUrl: Image.asset(
          'assets/images/apple.png',
        )),
    Product(
        id: 'p3',
        title: 'Uzum',
        description:
            'Column children weight Text("Text name goymaly seyle seyle style: TextStyle(fontWeight: fontweight.bold, fontSize: 34, FontFamily.)")',
        price: 10.50,
        newprice: 6.40,
        skitga: 5,
        imageUrl: Image.asset(
          'assets/images/apple.png',
        )),
    Product(
        id: 'p4',
        title: 'Kiwi',
        description: 'lorem fdsajlkfd sadkgdsjag; asfjsadlkgf akdfjdsgjh',
        price: 25.30,
        newprice: 16.80,
        skitga: 20,
        imageUrl: Image.asset(
          'assets/images/kiwi.png',
        )),
    Product(
        id: 'p1',
        title: 'Nohut',
        description: 'Corba naharlary resptleri',
        price: 21.30,
        newprice: 18.90,
        skitga: 12,
        imageUrl: Image.asset(
          'assets/images/kiwi.png',
        )),
    Product(
        id: 'p2',
        title: 'Pomidor',
        description: 'appbar: Appbar Scaffold: Body: Center name ',
        price: 3.50,
        newprice: 2.40,
        skitga: 25,
        imageUrl: Image.asset(
          'assets/images/kiwi.png',
        )),
  ];

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
