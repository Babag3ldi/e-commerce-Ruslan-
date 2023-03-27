import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final Image imageUrl;
  bool isFavorite;

  Product({
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isFavorite = false,
      });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  // List card = [];
  // cardvalui(_sozler) {
  //   card.add(_sozler);
  //   notifyListeners();
  // }

  // checkIFProductToCard(productID) {
  //   if (card.length > 0) {
  //     var result = card.where((element) => element.id == productID);
  //     if (result.isEmpty) {
  //       return false;
  //     } else {
  //       return true;
  //     }
  //   } else {
  //     return false;
  //   }
  // }

  // deleteproductfromCart(productId) {
  //   card.removeWhere((element) => element.id == productId);
  //   //print(card.toString());
  //   notifyListeners();
  // }

  // void changeSearchString(String value) {}

  //sonky

  List<String> _words = [];
  List<String> get products => _words;

  void toggleFavorite(String word) {
    final isExist = _words.contains(word);
    if (isExist) {
      _words.remove(word);
    } else {
      _words.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    final isExist = _words.contains(word);
    return isExist;
  }

  void clearFavorite() {
    _words = [];
    notifyListeners();
  }

  static Product of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<Product>(
      context,
      listen: listen,
    );
  }
}
