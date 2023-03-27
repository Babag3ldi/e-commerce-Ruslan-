import 'package:e_commerce/main.dart';
import 'package:e_commerce/product/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main_screen.dart';

class ProductDetail extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetail(this.title, this.price);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;

    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sizeHeight * 5,
            ),
            Center(
              child: Container(
                height: sizeHeight * 7,
                width: sizeWidth * 92,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey, //<-- SEE HERE
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                           Navigator.pushReplacement(
                            context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       MainScreen()));
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: '#0015de'.toColor(),
                        ),
                      ),
                      SizedBox(
                        width: sizeWidth * 3,
                      ),
                      Text(
                        loadedProduct.title,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
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
            Row(
              children: [
                SizedBox(
                  width: sizeWidth * 80,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 40,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
            Container(
                height: sizeHeight * 25,
                width: sizeWidth * 80,
                child: loadedProduct.imageUrl),
            SizedBox(
              height: sizeHeight * 5,
            ),
            Center(
              child: Container(
                height: sizeHeight * 7,
                width: sizeWidth * 92,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey, //<-- SEE HERE
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: sizeWidth * 5,
                      ),
                      Container(
                        width: sizeWidth * 65,
                        child: Text(
                          "${loadedProduct.price} TMT / 1 sany",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ),
                      CircleAvatar(
                          backgroundColor: '#0015de'.toColor(),
                          radius: 15,
                          child: const InkWell(
                              //onTap: countv,
                              child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ))),
                      SizedBox(
                        width: sizeWidth * 2,
                      ),
                      CircleAvatar(
                          backgroundColor: '#0015de'.toColor(),
                          radius: 15,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 20,
                            color: Colors.white,
                          )),
                      // SizedBox(
                      //   width: sizeWidth * 1,
                      // ),
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
              height: sizeHeight * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 6,
                    width: sizeWidth * 42.5,
                    child: Center(
                        child: Text(
                      "Kategoryadaky harytlar",
                      style: TextStyle(fontSize: 15),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 6,
                    width: sizeWidth * 42.5,
                    child: Center(
                        child: Text(
                      "Menzes harytlar",
                      style: TextStyle(fontSize: 15),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                
              ],
            ),
            SizedBox(height: sizeHeight * 3),
            InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 6,
                    width: sizeWidth * 90,
                    child: const Center(
                        child: Text(
                      "Bahalandyr",
                      style: TextStyle(fontSize: 18),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              width: sizeWidth * 35,
                              child: const Text(
                                "Ginisleyin",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 40,
                            
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                       Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10),
                        child: Text(
                          "${loadedProduct.description}",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
          ],
        ),
      ),
    );
  }
}
