import 'package:ecommerceapp/provider/cart.dart';
import 'package:ecommerceapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (BuildContext context) {
    return Cart();
    },
    child: MaterialApp(
      home: HomeScreen(),
    ));
  }
}
