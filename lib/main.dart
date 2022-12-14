import 'package:ecommerceapp/screens/details_screen.dart';
import 'package:ecommerceapp/screens/home_screen.dart';
import 'package:ecommerceapp/screens/login_screen.dart';
import 'package:ecommerceapp/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


