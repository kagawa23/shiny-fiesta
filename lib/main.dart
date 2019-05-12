import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
    theme: new ThemeData(primarySwatch: Colors.green),
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        new TextStyle(color: Colors.grey,fontSize: myTextSize);
    var column = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new MyCard(
          title: new Text("Favorite", style: myTextStyle),
          icon: new Icon(Icons.favorite, size: myIconSize, color: Colors.blue)
        ),
        new MyCard(
            title: new Text("Alarm", style: myTextStyle),
            icon: new Icon(Icons.alarm, size: myIconSize, color: Colors.blue)
        ),
        new MyCard(
            title: new Text("Airport Shuttle", style: myTextStyle),
            icon: new Icon(Icons.airport_shuttle, size: myIconSize, color: Colors.amber)
        ),
        new MyCard(
            title: new Text("Done", style: myTextStyle),
            icon: new Icon(Icons.done, size: myIconSize, color: Colors.green)
        ),
      ]
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget"),
      ),
      body: new Container(
        padding: const EdgeInsets.only(bottom:20.0),
        child: new Center(
          child: new SingleChildScrollView(child: column)
        )
      )
    );
  }
}


class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;
  MyCard({this.title,this.icon});
  @override
  Widget build(BuildContext context) {
    
    return new Container(
      margin: const EdgeInsets.only(bottom:10.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[this.title, this.icon],
          )
        )
      )
    );
  }
}