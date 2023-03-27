import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width / 100;
    double sizeHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          SizedBox(
            height: sizeHeight * 7,
          ),
          Container(
              height: sizeHeight * 30,
              width: sizeWidth * 50,
              child: Image.asset("assets/logo.png")),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: TextField(
              style: TextStyle(fontSize: 22),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, size: 24),
                fillColor: Colors.grey.shade100,
                //filled: true,
                hintText: "+993",
                hintStyle: TextStyle(fontSize: 22),
                labelStyle: TextStyle(fontSize: 22),
              ),
            ),
          ),
          SizedBox(height: sizeHeight * 5,),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: TextField(
              style: TextStyle(fontSize: 22),
              //obscureText: _isHidden,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, size: 24),
                  fillColor: Colors.grey.shade100,
                  
                  // suffix: InkWell(
                  //   onTap: _password,
                  //   child: Icon(
                  //     _isHidden ? Icons.visibility : Icons.visibility_off,
                  //   ),
                  // ),
                  hintText: "Acar sozi",
                  hintStyle: TextStyle(fontSize: 22),
                  labelStyle: TextStyle(fontSize: 22),
                  ),
            ),
          ),
              ],
            ),
        ));
  }
}
