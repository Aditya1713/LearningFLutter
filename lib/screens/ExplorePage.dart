import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/utils/routes.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
    home: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/bg2.png"),
        fit: BoxFit.fitHeight)
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.fromLTRB(10, 120, 10, 10),
            child: Image.asset("assets/shopping.png",width: 300,height: 400,),
          ),
          Material(
            color: Colors.white,
            child: Text("Explore the App" ,style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,
            ),
            ),
          ),
          Material(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Morbi maecenas quis interdum enim enim molestie faucibus. "
                  "Pretium non non massa eros, nunc, urna. Ac laoreet sagittis "
                  "donec vel. Amet, duis justo, quam quisque egestas. Quam enim "
                  "at dictum condimentum. Suspendisse." ,style: TextStyle(
                fontSize: 15,color: Colors.black,
              ),
              ),
            ),
          ),
          Material(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(8) ,

            child: InkWell(
             onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width:  150,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          Material(

            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Text("Tutorial?",style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,)
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
