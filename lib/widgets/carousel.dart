import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class Carousel1 extends StatelessWidget {
  const Carousel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
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
    );
  }
}
