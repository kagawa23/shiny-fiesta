import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(
    title: "simple material app",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('simple Material App'),
      ),
      body: new Container(
        child: new Center(
          child: new Text('Hello World'),
        )
      )
    )
  ));
}