import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Center(   // Center widget because of Box Constraints
      child: Container(   // Container equal to div element in HTML
          alignment: Alignment.center,
          color: Colors.deepPurple,
//          width: 200.0,
//          height: 100.0,
          margin: EdgeInsets.only(left : 15.0, right: 15.0),   // padding also apply in the same manner
          child: Text(
            "Flight",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 35.0,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              color: Colors.white
            ),
          )
      ),
    );
  }

}