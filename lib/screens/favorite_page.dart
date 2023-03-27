import 'package:e_commerce/main.dart';
import 'package:e_commerce/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../product/products.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;

    final favorite = Provider.of<Products>(context);

    return Scaffold(
        body: ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Carousel1(),
        SizedBox(
          height: sizeHeight * 2,
        ),
        FavoriteList()
      ],
    ));
  }
}

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;

    final favorite = Provider.of<Products>(context);

    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: favorite.card.length,
        itemBuilder: (BuildContext context, int index) => Container(
              //color: Colors.white12,
              height: sizeHeight * 14,
              //width: sizeWidth * 25,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: sizeWidth * 4,
                      ),
                      Container(
                        height: sizeHeight * 10,
                        width: sizeWidth * 20,
                        child: favorite.card[index].imageUrl,
                      ),
                      SizedBox(
                        width: sizeWidth * 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              SizedBox(
                                width: sizeWidth * 39,
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 18,
                                ),
                                onTap: () {
                                  print('delete');
                                  Provider.of<Products>(context, listen: false)
                                      .deleteproductfromFavorite(
                                          favorite.card[index].id);
                                },
                              ),
                              // IconButton(
                              //   icon: const Icon(
                              //     Icons.favorite,
                              //     color: Colors.red,
                              //     size: 18,
                              //   ),
                              //   onPressed: () {
                              //     print('delete');
                              //     Provider.of<Products>(context, listen: false)
                              //         .deleteproductfromFavorite(
                              //             favorite.card[index].id);
                              //   },
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: sizeHeight * 1,
                          ),
                          Row(
                            children: [
                              Text(
                                "${favorite.card[index].title} Ter Onum",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: sizeHeight * 1,
                          ),
                          Row(
                            children: [
                              Container(
                                width: sizeWidth * 50,
                                child: Text("${favorite.card[index].price} TMT / 1 sany",
                                    style: TextStyle(fontSize: 18)),
                              ),
                              //     SizedBox(
                              //   width: sizeWidth * 10,
                              // ),
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
                                    width: sizeWidth * 1,
                                  ),
                                  CircleAvatar(
                                      backgroundColor: '#0015de'.toColor(),
                                      radius: 12,
                                      child: const Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 17,
                                        color: Colors.white,
                                      )),
                                  SizedBox(
                                    width: sizeWidth * 1,
                                  )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeHeight * 2,
                  ),
                  const Divider(height: 1, indent: 16, endIndent: 16)
                ],
              ),
            ));
  }
}
