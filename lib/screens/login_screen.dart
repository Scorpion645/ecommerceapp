// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //  Email textfield
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        contentPadding: EdgeInsets.symmetric(horizontal: 20)),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //  Password textfield
          Container(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20)))))),
          ),

          SizedBox(
            height: 20,
          ),

          // Signin Button
          Container(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: BTNGreen,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text("Sign in",
                            style: GoogleFonts.robotoCondensed(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))))),
          )
        ],
      ),
    );
  }
}
