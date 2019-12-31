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

// Section 2
/*
import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Section 2",
    home: Scaffold(
      // here we used Scaffold because we can't directly assign list view to Material App home
      appBar: AppBar(
        title: Text("Listview"),
        backgroundColor: Colors.redAccent,
      ),
      body: getLongListView(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("FAB clicked");
          },
        child: Icon(Icons.add),
        tooltip: 'Add one more item'
      )
    )
  ));
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "item $counter");
  return items;
}

Widget getLongListView() {

  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    // itemBuilder plays an important role in creating our lis items
    return ListTile(
      title: Text(listItems[index]),
      leading: Icon(Icons.arrow_right),
      onTap: (){
        //debugPrint("${listItems[index]} was tapped");
        showSnackbar(context, listItems[index]);
      }
    );
  });

  return listView;
}

void showSnackbar(BuildContext context, String listItem){

  var snackbar = SnackBar(
    content: Text("You just tapped the $listItem"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint('Performing Dummy undo option');
      }
    )
  );

  Scaffold.of(context).showSnackBar(snackbar);
}

// Basic ListView
Widget getListView() {
  var listView = ListView(children: <Widget>[
    ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape Tapped");
        }),
    ListTile(leading: Icon(Icons.laptop_chromebook), title: Text("Windows")),
    ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
    Text(" Another element in the listview"),
    Container(color: Colors.red, height: 50.0)
  ]);
  return listView;
}*/

// Stateful Widgets
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Section 3",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  var _currencies = ['Rupees', 'Dollars', 'Pounds', 'Other'];
  var currentItemSelected = 'Rupees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful App Example"),
        ),
        body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              TextField(
                onSubmitted: (String userInput) {
                  setState(() {
                    nameCity = userInput;
                  });
                },
              ),
              DropdownButton<String>(
                items: _currencies.map((String dropDowStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDowStringItem,
                    child: Text(dropDowStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  // Code to execute, when a menu item is selected from drop down
                  _onDropDownItemSelected(newValueSelected);
                },
                value: currentItemSelected,
              ),
              Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text("Your best city is $nameCity",
                      style: TextStyle(fontSize: 20.0)))
            ])));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this.currentItemSelected = newValueSelected;
    });
  }
}
