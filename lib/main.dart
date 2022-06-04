
import 'package:flutter/material.dart';
import 'package:untitled/screens/ExplorePage.dart';
import 'package:untitled/screens/HomePage.dart';
import 'package:untitled/screens/LoginPage.dart';
import 'package:untitled/screens/SignUpPage.dart';
import 'package:untitled/utils/routes.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarBrightness: Brightness.dark,
   statusBarIconBrightness: Brightness.dark,

 ));
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


        @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
