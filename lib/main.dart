import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "mediaQuery",
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: HomePage(),
   );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MediaQuery",
        ),
      ),
      body : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width *0.3,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          )
        ],
          ),
        );

  }
}