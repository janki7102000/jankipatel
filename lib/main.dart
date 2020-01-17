

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "temp",
    home: MyApp(),
    ));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double hight = 50;
  double width = 50;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Animated container"),
        backgroundColor: Colors.redAccent,
       ),
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          
           
         child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            Random random = Random();
            hight = random.nextInt(300).toDouble();
            width = random.nextInt(300).toDouble();
          });
          
        },
        
      ),

      );
  }
}