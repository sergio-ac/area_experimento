import 'package:flutter/material.dart';

class PruebasPage extends StatelessWidget{
  final String pageText;
  PruebasPage (this.pageText);
  @override 
  Widget build (BuildContext context){
    return new Scaffold(
      appBar : new AppBar (title:new Text(pageText),backgroundColor: Colors.pinkAccent,),
      body: new Center (child:new Text(pageText))

    );
  }
}