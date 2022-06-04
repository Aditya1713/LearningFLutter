import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/PojoClass.dart';
import 'package:untitled/utils/routes.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:country_list_pick/country_list_pick.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpPage extends StatefulWidget{


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  String name = "";
  bool changeButton = false;
  String userName="";
  String password="";
  String upassword="";
   String uemail="";
  late DatabaseReference ref;
  late MyPojoClass userData;
  var uid = Random();
  late int uidd;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(()  {
        changeButton = true;

        uidd=uid.nextInt(9999);

       ref = FirebaseDatabase.instance.ref("User/$uidd");


       });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent));

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Material(


        child: Stack(children: [

          Container(

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg2.png"),
                fit: BoxFit.fitHeight,
              )
            ),
          ),

        SingleChildScrollView(
              child : Column(children: <Widget> [
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.fromLTRB(10.0,80,0,0 ),
                        child: Text(
                          "SignUp Account ",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(0,80, 0,0 ),
                          child: Icon(
                            Icons.account_circle_outlined,size: 20,
                          )
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.fromLTRB(80,80, 0,0 ),
                          child: CountryListPick(
                            appBar: AppBar(
                              backgroundColor: Colors.amber,
                              // title: Text('Pick your country'),
                            ),

                            theme: CountryTheme(
                              isShowFlag: true,
                              isShowTitle: false,
                              isShowCode: false,
                              isDownIcon: true,
                              showEnglishName: false,
                              labelColor: Colors.black,

                            ),
                            initialSelection: '+91',
                            // useUiOverlay: true,
                            // useSafeArea: true,
                            )

                      ),

                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(50.0,80, 20,0 ),
                  child: Text(
                    "Q-Box",
                    style: TextStyle(

                      fontSize: 52,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 32.0),
                          child: Column(
                            children: [
                              Container(
                                width: 450 ,
                                height: 70,
                                child: TextFormField(

                                  decoration: InputDecoration(

                                    hintText: "Enter eamil id",
                                    labelText: "Email id",
                                    enabledBorder:  OutlineInputBorder(
                                        borderSide: const BorderSide(color: Colors.grey, width: 2.0,
                                        style: BorderStyle.solid),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    border: OutlineInputBorder(),
                                  ),

                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email cannot be empty";
                                    }
                                    else{
                                      uemail =value.trim();

                                    }

                                  },
                                  onChanged: (value) {
                                    name = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width:450 ,
                                height:70 ,
                                child: TextFormField(
                                  // controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(

                                    hintText: "Enter password",
                                    labelText: "Password",
                                    enabledBorder:  OutlineInputBorder(
                                        borderSide:  BorderSide(color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Password cannot be empty";
                                    } else if (value.length < 6) {
                                      return "Password length should be atleast 6";
                                    }
                                    else{
                                      upassword = value.trim();
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Material(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(8) ,

                                child: InkWell(
                                  //onTap: () => moveToHome(context),
                                  onTap: (){
                                    registerUser(context);
                                    moveToHome(context);
                                    ref.set({
                                    "email": uemail,
                                    "password": upassword,
                                    "uid": uidd
                                    });
                                    print(uemail);},
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    width:  450,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: changeButton ? Icon(Icons.done, color: Colors.white,)
                                        : Text(  "Sign Up",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(

                                padding: EdgeInsets.fromLTRB(20,0, 20, 20),
                                child: Material(

                                  child: Text("----------Or sign Up with----------"),
                                ),
                              ),

                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                                child: Material(
                                  child :InkWell(
                                    child : Text("Login Now",style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ), ),
                                    onTap: () {
                                         Navigator.pushNamed(context, MyRoutes.loginRoute);

                                                 }

                                  ),

                                ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ]),

            ),
        ],
        ),
          ),
    );



  }
  final FirebaseAuth  _firebaseAuth = FirebaseAuth.instance;
  void registerUser(BuildContext context) async{
    final User? firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(email: uemail, password: upassword)).user;
  }
}
