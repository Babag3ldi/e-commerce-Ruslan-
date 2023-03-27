import 'package:e_commerce/main.dart';
import 'package:e_commerce/product/bottom_controller.dart';
import 'package:e_commerce/product/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../main_screen.dart';
import '../product/product_model.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    final controller = Get.put(BottomBarController());
    return Scaffold(
        body: ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: sizeHeight * 2,
        ),
        Center(
          child: Container(
            height: sizeHeight * 7,
            width: sizeWidth * 92,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: sizeWidth * 5,
                  ),
                  SizedBox(
                    child: Text(
                      "Sebet  ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    width: sizeWidth * 73,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            //color: Colors.white10,
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey),
              //color: Colors.white10,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: -2,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: sizeHeight * 2,
        ),
        Row(
          children: [
            SizedBox(
              width: sizeWidth * 10,
            ),
            Text(
              "Sebetdaki harytlar",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 3,
        ),
        FavoriteList(),
        SizedBox(
          height: sizeHeight * 3,
        ),
        Row(
          children: [
            SizedBox(
              width: sizeWidth * 10,
            ),
            Text(
              "Eltip bermanin gosmaca jemi",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 1.5,
        ),
        Row(
          children: [
            SizedBox(
              width: sizeWidth * 10,
            ),
            Text(
              "Harytlaryn bahalary",
              style: TextStyle(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.start,
            ),
            Container(
              width: sizeWidth * 45,
              child: Text(
                "64.0 TMT",
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 1.5,
        ),
        Row(
          children: [
            SizedBox(
              width: sizeWidth * 10,
            ),
            Text(
              "Aksiya boyunca arzanladys",
              style: TextStyle(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.start,
            ),
            Container(
              width: sizeWidth * 30.5,
              child: Text(
                "0 TMT",
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 2.5,
        ),
        const Divider(height: 2, thickness: 1.5, indent: 16, endIndent: 16),
        SizedBox(
          height: sizeHeight * 2.5,
        ),
        Row(
          children: [
            SizedBox(
              width: sizeWidth * 10,
            ),
            Text(
              "Jemi",
              style: TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            Container(
              width: sizeWidth * 73,
              child: Text(
                "64.0 TMT",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 5,
        ),
        Center(
          child: ElevatedButton(
            child: const Text(
              'Sargyt etmek',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(sizeWidth * 50, sizeHeight * 6.5),
                primary: Colors.green,
                
                ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: sizeHeight * 10,
        ),
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
                                child: Text(
                                    "${favorite.card[index].price} TMT / 1 sany",
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
                  const Divider(
                      height: 1, thickness: 1.5, indent: 16, endIndent: 16)
                ],
              ),
            ));
  }
}
