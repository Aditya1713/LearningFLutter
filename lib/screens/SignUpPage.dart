import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:untitled/utils/routes.dart';
import 'package:country_list_pick/country_list_pick.dart';

class SignUpPage extends StatefulWidget{

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
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
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Material(
        color:Colors.white ,
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
                              title: Text('Pick your country'),
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
                            // or
                            // initialSelection: 'US'

                          ),

                      ),

                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(60.0,100, 20,0 ),
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
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 32.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter eamil id",
                                  labelText: "Email id",
                                  enabledBorder:  OutlineInputBorder(
                                      borderSide:  BorderSide(color: Colors.grey, width: 2.0),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Email cannot be empty";
                                  }

                                  return null;
                                },
                                onChanged: (value) {
                                  name = value;
                                  setState(() {});
                                },
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter password",
                                  labelText: "Password",
                                  enabledBorder:  OutlineInputBorder(
                                      borderSide:  BorderSide(color: Colors.grey, width: 2.0),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Password cannot be empty";
                                  } else if (value.length < 6) {
                                    return "Password length should be atleast 6";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Material(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(8) ,

                                child: InkWell(
                                  onTap: () => moveToHome(context),
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    width:  150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: changeButton ? Icon(Icons.done, color: Colors.white,)
                                        : Text(
                                      "Sign Up",
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
                                    onTap: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
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
}