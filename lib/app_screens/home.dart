import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        // Center widget because of Box Constraints

        child: Container(
            // Container equal to div element in HTML

            alignment: Alignment.center,
            color: Colors.deepPurple,
//          width: 200.0,
//          height: 100.0,
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            // padding also apply in the same manner

            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: Text("Spice Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
                Expanded(
                    child: Text("From Karachi to Lahore",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.white)))
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: Text("PIA",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
                Expanded(
                    child: Text("From Islamabad to Lahore",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.white)))
              ]),
              GoogleImageAssets(),
              BookingButton()
            ])));
  }
}

// For Image
class GoogleImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/download.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(child: image);
  }
}

// For Raised Button
class BookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book your Flight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)),
    );
  }

  // For Alert Dialog
  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
        title: Text("Booked Successfully"),
        content: Text("Have a Pleasant Flight"));

    showDialog(
        context: context,
        builder: (BuildContext context) =>
            alertDialog); // here builder is a function handler
  }
}
