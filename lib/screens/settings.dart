import 'package:e_commerce/screens/barada.dart';
import 'package:e_commerce/screens/habarlasmak.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/single_child_widget.dart';

import 'favorite_page.dart';
import '../product/bottom_controller.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    final controller = Get.put(BottomBarController());
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
          SizedBox(height: sizeHeight * 3,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.login_outlined , size:  34,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  
                },
                  child: Text(
                "Iceri gir",
                style: TextStyle(fontSize: 22),
              ))
            ],
          ),
          SizedBox(height: sizeHeight * 2,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {
                    controller.setIndex(-2);
                  },
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.favorite_outline, size: 34,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  controller.setIndex(-2);
                },
                  child: Text(
                "Halanlarym",
                style: TextStyle(fontSize: 22),
              ))
            ],
          ),
          SizedBox(height: sizeHeight * 2,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.location_on_outlined, size: 38,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  
                },
                  child: Text(
                "Salgy",
                style: TextStyle(fontSize: 22),
              ))
            ],
          ),
          SizedBox(height: sizeHeight * 2,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.check_box_outline_blank, size: 34,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  
                },
                  child: Text(
                "Sargytlarym",
                style: TextStyle(fontSize: 22),
              ))
            ],
          ),
          SizedBox(height: sizeHeight * 2,),
          InkWell(
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
                                  style:
                                      TextStyle(fontSize: 22),
                                ),
                                SizedBox(height: sizeHeight * 2,),
                                Text(
                                  "Rus dili",
                                  style:
                                      TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            //content: Text('Turkmen dil'),
                          );
                        });
                },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.language_outlined, size: 34,),
                  ),
                ),
                SizedBox(
                  width: sizeWidth * 7,
                ),
                
                  
                     Text(
                  "Dil",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(height: sizeHeight * 2,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.help_outline, size: 34,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  
                },
                  child: Text(
                "Komek",
                style: TextStyle(fontSize: 22),
              ))
            ],
          ),
          SizedBox(height: sizeHeight * 2,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                            context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       Habarlasmak()));
                  },
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.phone_in_talk_outlined, size: 34,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                            context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       Habarlasmak()));
                },
                  child: Text(
                "Habarlasmak",
                style: TextStyle(fontSize: 22),
              ))
            ],
          ),
          SizedBox(height: sizeHeight * 2,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: InkWell(
                  onTap: () {
                    //controller.setIndex(-3);
                    Navigator.push(
                            context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       Barada()));
                  },
                  child: Container(
                    height: sizeHeight * 8,
                    width: sizeWidth * 17,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.info_outline, size: 34,),
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 7,
              ),
              InkWell(
                onTap: () {
                  //controller.setIndex(-3);
                  Navigator.push(
                            context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       Barada()));
                },
                  child: Text(
                "Biz barada",
                style: TextStyle(fontSize: 22),
              ))
            ],
          )
              ],
            ),
        ));
  }
}
