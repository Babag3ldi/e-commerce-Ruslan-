import 'package:e_commerce/main.dart';
import 'package:e_commerce/screens/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String id;
  final Image imageUrl;
  final double price;
  final double newprice;
  final num skitga;

  ProductItem(this.id, this.imageUrl, this.price, this.newprice, this.skitga);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
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
             // Navigator.of(context).pushNamed(ProductDetail.routeName);
            },
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                      //color: Colors.green,
                      width: sizeWidth * 10,
                      height: sizeHeight * 2,
                      child: Center(child: Text(" -${widget.skitga}%", style: TextStyle(fontSize: 12, color: Colors.white),)),
                    ),
                    SizedBox(width: sizeWidth * 7.3,),
                    IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.black12,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                widget.imageUrl,
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
                            "${widget.price} TMT",
                            style: TextStyle(fontSize: 12, decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            "${widget.newprice} TMT",
                            style: TextStyle(fontSize: 12, color: Colors.green),
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
                      width: sizeWidth *1,
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
                  width: sizeWidth *1,
                ),
                  ],
                )
              ],
            ),

            // child: Image.asset(imageUrl, fit: BoxFit.cover)
          ),
          // footer: GridTileBar(
          //   backgroundColor: Colors.black54,
          //   leading: IconButton(
          //     icon: Icon(Icons.favorite),
          //     onPressed: () {},
          //   ),
          //   // title: Text(
          //   //   title,
          //   //   textAlign: TextAlign.center,
          //   // ),
          //   trailing: IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
        ),
      ),
    );
  }
}
