import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void main(){
    runApp(HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Column(
      children: [
        Container(
          color: Colors.grey[300],
          alignment: Alignment.topCenter,
          margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text("Qriocty Box"),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.fromLTRB(100, 0 , 0, 0),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.cast,),alignment: Alignment.centerRight,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications),alignment: Alignment.centerRight,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search),alignment: Alignment.centerRight,),
                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.account_circle),alignment: Alignment.centerRight,),
                  ],
                ),
              ),

            ],
          ),
        ),
         Container(
           margin: EdgeInsets.symmetric(vertical:10,horizontal: 10),

           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey[200]),
                  child: Text("Select Course"),
              ),
              Container(
                  padding: EdgeInsets.all(3),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]),child: Text("Live Classes")),
              Container( padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]),child: Text("Free Classes")),
              Container(  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),

                  color: Colors.grey[200]),child: Text("Did you know?")),

            ],
        ),
         ),
         Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/thumbnail.png",width: 350,height: 250,),
                        Row(
                          children: [
                            Image.asset("assets/pp.png"),
                            Container( alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text("Build it in Figma: \nCreate a Design System — Foundations",style: TextStyle(),)),
                          ],
                        ),
                        Container(alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                            child: Text("Figma  44K views  4months ago",
                                style: TextStyle(color: Colors.grey[400]))),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/thumbnail.png",width: 350,height: 250,),
                        Row(
                          children: [
                            Image.asset("assets/pp.png"),
                            Container( alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text("Build it in Figma: \nCreate a Design System — Foundations",style: TextStyle(),)),
                          ],
                        ),
                        Container(alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                            child: Text("Figma  44K views  4months ago",
                                style: TextStyle(color: Colors.grey[400]))),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/thumbnail.png",width: 350,height: 250,),
                        Row(
                          children: [
                            Image.asset("assets/pp.png"),
                            Container( alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text("Build it in Figma: \nCreate a Design System — Foundations",style: TextStyle(),)),
                          ],
                        ),
                        Container(alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                            child: Text("Figma  44K views  4months ago",
                                style: TextStyle(color: Colors.grey[400]))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
         ),


      ],
    ),
      bottomNavigationBar: Container(

        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(

          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,

              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This feature will be added",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey[400],
                    textColor: Colors.black,
                    fontSize: 16.0
                );
                },
              icon: Image.asset("assets/vector1.png")
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This feature will be added",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey[400],
                    textColor: Colors.black,
                    fontSize: 16.0
                );

                },
              icon: Image.asset("assets/vector2.png")
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This feature will be added",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey[400],
                    textColor: Colors.black,
                    fontSize: 16.0
                );

                },
              icon: Image.asset("assets/vector3.png")
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This feature will be added",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey[400],
                    textColor: Colors.black,
                    fontSize: 16.0
                );

              },
              icon: Image.asset("assets/vector4.png")
            ),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This feature will be added",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.grey[400],
                      textColor: Colors.black,
                      fontSize: 16.0
                  );
                },
                icon: Image.asset("assets/vector5.png")
            ),
          ],
        ),
      ),

    );
  }
}