import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'products.dart';
import 'product_item.dart';

class ArzanProductsGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ArzanProducts>(context);
    final products = productsData.items;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding:  EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].imageUrl,
        products[i].price,
        products[i].newprice,
        products[i].skitga,
       
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15), 
        );
  }
}
