import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: sizeHeight * 3,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.coffee_outlined, size: 30,),
                title: Text("Azyk harytlar", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: new Icon(FontAwesome5.heartbeat, size: 30,),
                title: Text("Saglyk we gozelik", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          const InkWell(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.child_care_outlined, size: 30,),
                title: Text("Cagalar ucin", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.coffee_outlined, size: 30,),
                title: Text("Oy we bezeg", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.check_box_outline_blank_outlined, size: 30,),
                title: Text("Elektronika", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.phone_android_outlined, size: 30,),
                title: Text("Smartfon", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.tv_outlined, size: 30,),
                title: Text("Oy tehnikalary", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.bolt_outlined, size: 30,),
                title: Text("Parfumeriya", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.coffee_outlined, size: 30,),
                title: Text("Geyim", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.card_giftcard_outlined, size: 30,),
                title: Text("Sowgatlyk harytlar", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          const InkWell(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(FontAwesome5.car, size: 30,),
                title: Text("Awtoulag ucin", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_forward_ios_outlined),     //chevron_right_outlined
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 0,),
          const InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.pets_outlined, size: 30,),
                title: Text("Oy haywanlar ucin", style: TextStyle(fontSize: 24),),
                trailing: Icon(Icons.arrow_back_outlined),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 3,),
        ],
      ),
    ));
  }
}
