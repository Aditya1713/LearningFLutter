
import 'package:flutter/material.dart';
import 'package:untitled/screens/ExplorePage.dart';
import 'package:untitled/screens/HomePage.dart';
import 'package:untitled/screens/LoginPage.dart';
import 'package:untitled/screens/SignUpPage.dart';
import 'package:untitled/utils/routes.dart';


void main() {
  runApp(MyApp());
}


      class MyApp extends StatelessWidget {


        @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SignUpPage(),
        MyRoutes.signUpRoute: (context) => SignUpPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.exploreRoute: (context) => ExplorePage()
      },
    );
        }
      }
