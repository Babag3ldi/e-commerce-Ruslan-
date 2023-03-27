import 'package:e_commerce/main.dart';
import 'package:e_commerce/product/bottom_controller.dart';
import 'package:e_commerce/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_screen.dart';

class Barada extends StatelessWidget {
  const Barada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    final controller = Get.put(BottomBarController());
    return Scaffold(
        body: Column(
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
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      //controller.setIndex(0);
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => Settings()));
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
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
                    "Programa barada",
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
        SizedBox(
          height: sizeHeight * 20,
        ),
        Container(
            height: sizeHeight * 30,
            width: sizeWidth * 50,
            child: Image.asset("assets/logo.png")),
        Text(
          "Tazelenen wersiyasy 1.3.6",
          style: TextStyle(fontSize: 20),
        )
      ],
    ));
  }
}
