import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product/products.dart';
import 'widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;

  ProductsGrid(this.showFavs);

  
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding:  EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
         //word = products[i];
        //create: (c) => products[i],
        value: products[i],
        child: ProductItem(
          
          // products[i].id,
          // products[i].imageUrl,
          // products[i].price,
          ),
      ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15), 
        );
  }
}
