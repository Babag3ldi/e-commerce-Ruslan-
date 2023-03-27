import 'package:e_commerce/main.dart';
import 'package:e_commerce/product/product_model.dart';
import 'package:e_commerce/product/products.dart';
import 'package:e_commerce/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../product/bottom_controller.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final Image imageUrl;
  // final double price;

  // ProductItem(this.id, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    final controller = Get.put(BottomBarController());

    final product = Provider.of<Product>(context, listen: false);
    final favorite = Provider.of<Products>(context);


    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              //controller.setIndex(-3);
              Navigator.of(context)
                  .pushNamed(ProductDetail.routeName, arguments: product.id);
            },
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: sizeWidth * 17.3,
                    ),
                    favorite.checkIFProductToCard(product.id)
                        ? IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              print('delete');
                              Provider.of<Products>(context, listen: false)
                                  .deleteproductfromCart(product.id);
                            },
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.black12,
                            ),
                            onPressed: () async {
                              Provider.of<Products>(context, listen: false)
                                  .cardvalui(product);
                              //await box.put(i, sozMaglumat);
                            },
                          ),

                    // favorite.checkIFProductToCard(
                    //                             product.id)
                    //                         ? GestureDetector(
                    //                             child: Icon(
                    //                               Icons.favorite_rounded,
                    //                               color: Colors.pink.shade500,
                    //                               size: 40,
                    //                             ),
                    //                             onTap: () {
                    //                               print('delete');
                    //                               Provider.of<Products>(
                    //                                       context,
                    //                                       listen: false)
                    //                                   .deleteproductfromCart(

                    //                                           product.id);
                    //                             })
                    //                         : GestureDetector(
                    //                             child: Icon(
                    //                               Icons.favorite_outline,
                    //                               color: Colors.pink.shade500,
                    //                               size: 40,
                    //                             ),
                    //                             onTap: () async {
                    //                               Provider.of<Products>(
                    //                                       context,
                    //                                       listen: false)
                    //                                   .cardvalui(
                    //                                       product);
                    //                                       //await box.put(i, sozMaglumat);
                    //                             },
                    //                           ),
                  ],
                ),
                product.imageUrl,
                SizedBox(
                  height: sizeHeight * 1,
                ),
                Row(
                  children: [
                    Container(
                      width: sizeWidth * 14,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${product.price} TMT",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "0 sany",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                        backgroundColor: '#0015de'.toColor(),
                        radius: 12,
                        child: const InkWell(
                            //onTap: countv,
                            child: Icon(
                          Icons.add,
                          size: 17,
                          color: Colors.white,
                        ))),
                    SizedBox(
                      width: 4,
                    ),
                    CircleAvatar(
                        backgroundColor: '#0015de'.toColor(),
                        radius: 12,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 17,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: sizeWidth * 1,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
