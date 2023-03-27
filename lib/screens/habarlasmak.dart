import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';

import '../main_screen.dart';

class Habarlasmak extends StatelessWidget {
  const Habarlasmak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
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
                    color: Colors.grey,
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
                      "Habarlasmak",
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
            height: sizeHeight * 2,
          ),
          Container(
              height: sizeHeight * 25,
              width: sizeWidth * 50,
              child: Image.asset("assets/logo.png")),
          Text(
            "Lebap welayat Turkmenatbat saheri \n Kanstanstwa kocesi",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: sizeHeight * 2,
          ),
          Container(
            width: sizeWidth * 65,
            child: Column(
              children: [
                Text(
                  "Siz islendik wagt biz bilen habarlasyp gerek harytlarynyzy sargap bilersiniz. Biz 7/24 ulgamda bolyarys!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: sizeHeight * 5,
                ),
                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 20,
                        child: const InkWell(
                            //onTap: countv,
                            child: Icon(
                          Icons.camera,
                          size: 34,
                          color: Colors.amber,
                        ))),
                    SizedBox(
                      width: sizeWidth * 3,
                    ),
                    Text(
                      "e-commerce",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeHeight * 2,
                ),
                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 20,
                        child: const InkWell(
                            //onTap: countv,
                            child: Icon(
                          Icons.mail,
                          size: 30,
                          color: Colors.amber,
                        ))),
                    SizedBox(
                      width: sizeWidth * 3,
                    ),
                    Text(
                      "ecommerce@gmail.com",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeHeight * 2,
                ),
                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 20,
                        child: const InkWell(
                            //onTap: countv,
                            child: Icon(
                          Icons.phone_in_talk_outlined,
                          size: 30,
                          color: Colors.amber,
                        ))),
                    SizedBox(
                      width: sizeWidth * 3,
                    ),
                    Text(
                      "+993 61748339",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: sizeHeight * 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: sizeHeight * 7,
                width: sizeWidth * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      size: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "GET IT ON",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "Google Play",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                      width: sizeWidth * 4,
                    ),
              Container(
                height: sizeHeight * 7,
                width: sizeWidth * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      size: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Avalible on the",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "App Store",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
              ],
            ),
        ));
  }
}
