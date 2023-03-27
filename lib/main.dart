import 'package:e_commerce/product/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'arzan_harytlar.dart/products.dart';
import 'main_screen.dart';
import 'screens/product_detail.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp( MyApp());
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

 MaterialColor customSwatch =   MaterialColor(
  0xFFA4C639,
   <int, Color>{
    50:  Color('#0015de'.toColor()),
    100:  Color('#0015de'.toColor()),
    200:  Color('#0015de'.toColor()),
    300:  Color('#0015de'.toColor()),
    400:  Color('#0015de'.toColor()),
    500:  Color('#0015de'.toColor()),
    600:  Color('#0015de'.toColor()),
    700:  Color('#0015de'.toColor()),
    800:  Color('#0015de'.toColor()),
    900:  Color('#0015de'.toColor()),
  },
);

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider.value(
        value: Products(),), 
        ChangeNotifierProvider.value(
        value: ArzanProducts(),), 
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
           // primarySwatch: customSwatch,
          ),
          home: MainScreen(),
          routes: {
            ProductDetail.routeName: (ctx) => ProductDetail(),
          },
        ),
    );
  }
}
