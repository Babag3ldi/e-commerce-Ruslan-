import 'package:e_commerce/arzan_harytlar.dart/products_grid.dart';
import 'package:e_commerce/screens/barada.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'product/bottom_controller.dart';
import 'screens/favorite_page.dart';
import 'main.dart';
import 'screens/category.dart';
import 'product/product_model.dart';
import 'product/products.dart';
import 'products_grid.dart';
import 'screens/profile.dart';
import 'screens/product_detail.dart';
import 'screens/settings.dart';
import 'screens/card.dart';
import 'widgets/carousel.dart';
import 'widgets/product_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isPressed2 = true;
  bool isHighlighted1 = true;
  bool isHighlighted2 = true;
  bool isHighlighted3 = true;

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    final controller = Get.put(BottomBarController());
    var _showOnlyFavorite = false;

    return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onHighlightChanged: (value) {
                  setState(() {
                    isHighlighted1 = !isHighlighted1;
                  });
                },
                onTap: () {},
                child: AnimatedContainer(
                    margin: EdgeInsets.all(isHighlighted1 ? 0 : 2.5),
                    height: isHighlighted1 ? 45 : 40,
                    width: isHighlighted1 ? 45 : 40,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black.withOpacity(0.6),
                      size: 30,
                    )),
              ),
            ),
            title: Container(
              height: sizeHeight *13,
              width: sizeWidth * 13,
              child: Image.asset("assets/logo.png")),
              centerTitle: true,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onHighlightChanged: (value) {
                    setState(() {
                      isHighlighted2 = !isHighlighted2;
                    });
                  },
                  onTap: () {},
                  child: AnimatedContainer(
                      margin: EdgeInsets.all(isHighlighted2 ? 0 : 2.5),
                      height: isHighlighted2 ? 45 : 40,
                      width: isHighlighted2 ? 45 : 40,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5,
                            offset: Offset(0, 0),
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.6),
                        size: 30,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onHighlightChanged: (value) {
                    setState(() {
                      isHighlighted3 = !isHighlighted3;
                    });
                  },

                  // Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) =>
                  //                      MyApp1()));
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            //backgroundColor: '#000043'.toColor(),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Turkmen dili",
                                  style: TextStyle(fontSize: 22),
                                ),
                                SizedBox(
                                  height: sizeHeight * 2,
                                ),
                                Text(
                                  "Rus dili",
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            //content: Text('Turkmen dil'),
                          );
                        });
                  },
                  child: AnimatedContainer(
                      margin: EdgeInsets.all(isHighlighted3 ? 0 : 2.5),
                      height: isHighlighted3 ? 45 : 40,
                      width: isHighlighted3 ? 45 : 40,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 5,
                            offset: Offset(0, 0),
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.language_outlined,
                        color: Colors.black.withOpacity(0.6),
                        size: 30,
                      )),
                ),
              ),
            ],
          ),
          body:Obx(
      () => controller.getIndex() == 0
              ? Container(
                  child: ListView(
                    //shrinkWrap: true,
                    children: [
                      Carousel1(),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      Container(
                          height: sizeHeight * 15,
                          width: double.infinity,
                          color: '#0015de'.toColor(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                      color: Colors.white70, width: 1),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 70,
                                    // color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.widgets_outlined,
                                          size: 36,
                                        ),
                                        Text(
                                          "Onumler",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                      color: Colors.white70, width: 1),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 70,
                                    // color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          Icons.widgets_outlined,
                                          size: 36,
                                        ),
                                        Text(
                                          "Kategorialar",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )),
                              ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                      color: Colors.white70, width: 1),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller.setIndex(-2);
                                  },
                                  child: Container(
                                      height: 100,
                                      width: 70,
                                      // color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.favorite_outline,
                                            size: 36,
                                          ),
                                          Text(
                                            "Halanlarym",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                      color: Colors.white70, width: 1),
                                ),
                                child: Container(
                                    height: 100,
                                    width: 70,
                                    // color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          Icons.text_snippet_outlined,
                                          size: 36,
                                        ),
                                        Text(
                                          "Sargytlarym",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          )),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 10),
                            child: Text(
                              "Harytlar",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: sizeHeight * 0.25,
                            width: sizeWidth * 45,
                            color: '#0015de'.toColor(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                            ),
                            child: Text(
                              "ahlisini gorkez",
                              style: TextStyle(
                                color: '#0015de'.toColor(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      ProductsGrid(_showOnlyFavorite),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10),
                        child: Text(
                          "Aksiyalar",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: sizeHeight * 20,
                          width: double.infinity,
                          child: Carousel(
                            dotIncreaseSize: 2.0,
                            dotSize: 6.0,
                            dotSpacing: 15.0,
                            indicatorBgPadding: 2,
                            dotBgColor: Colors.transparent,
                            //dotPosition: DotPosition.bottomCenter,
                            images: [
                              Image.asset('assets/images/fruits.png',
                                  fit: BoxFit.cover),
                              Image.asset('assets/images/fruits1.png',
                                  fit: BoxFit.cover),
                              Image.asset('assets/images/fruits.png',
                                  fit: BoxFit.cover),
                              Image.asset('assets/images/fruits1.png',
                                  fit: BoxFit.cover),
                              Image.asset('assets/images/fruits.png',
                                  fit: BoxFit.cover),
                              Image.asset('assets/images/fruits1.png',
                                  fit: BoxFit.cover),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 10),
                            child: Text(
                              "Arzanladysdaky harytalr",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: sizeHeight * 0.25,
                            width: sizeWidth * 11,
                            color: '#0015de'.toColor(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                            ),
                            child: Text(
                              "ahlisini gorkez",
                              style: TextStyle(
                                color: '#0015de'.toColor(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      ArzanProductsGrid(),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10),
                        child: Text(
                          "Serwis bahalandyrmalar",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sizeHeight * 2.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: sizeHeight * 12,
                            width: sizeWidth * 42.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 15),
                                  child: Icon(
                                    Icons.done_all_outlined,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Siz nirede yerlesyaniz!",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: sizeHeight * 12,
                            width: sizeWidth * 42.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 15),
                                  child: Icon(
                                    Icons.done_all_outlined,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Thanks lot!",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                )
              : controller.getIndex() == 1
                  ? Category()

                  ///layers_outlined
                  : controller.getIndex() == 2
                      ? Profile()
                      : controller.getIndex() == -1
                          ? Card1()
                          : controller.getIndex() == -2
                          ? FavoritePage()
                          : controller.getIndex() == -3
                          ? Settings()
                          
                          : Settings(),),
                          
          floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                controller.setIndex(-1);
                //Get.to( () => AddRecordView());
                // final route = MaterialPageRoute(
                //   builder: (context) =>  Card1(),
                // );
                // Navigator.push(context, route);
              },
              backgroundColor: '#0015de'.toColor(),
            ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            height: 60,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            gapLocation: GapLocation.center,
            backgroundColor: '#0015de'.toColor(),
            notchSmoothness: NotchSmoothness.sharpEdge,
            icons: [Icons.home, Icons.widgets, Icons.person, Icons.settings,],
            iconSize: 30,
            activeIndex: controller.getIndex(),
            onTap: (index) => controller.setIndex(index),
            // {
            //   // setState(() {
            //   // _currentTab = int;
            //   // _currentScreen = (int == 0)?GraphScreen():HistoryScreen();
            //   // });
            //   // print(int);
            // }
          )
    );
  }
}

