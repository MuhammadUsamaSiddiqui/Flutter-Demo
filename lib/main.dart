/*
import "package:flutter/material.dart";    // contains all the material widgets which implements material design
import 'package:flutter_app/app_screens/first_screen.dart';

// Function Expressions
void main() =>  runApp(MyFlutterApp());    // inflate the widget and attach it to the screen


class MyFlutterApp extends StatelessWidget{  // the widget that will be returned in this class will not contain any state and it will never change in future

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Main Screen"),
              backgroundColor: Colors.green,
            ),
            body: FirstScreen()
    )
    );
  }

}
*/

import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/home.dart';

void main (){

  runApp(
      MaterialApp(
        title: "Section 2",
        home: Home(),
      )
  );
}
