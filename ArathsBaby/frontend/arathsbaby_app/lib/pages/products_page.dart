import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget{
  final String pageText;
  ProductsPage(this.pageText);
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text(pageText),backgroundColor: Colors.pinkAccent,),
      body: new Center(
      child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Primer elemento"),

            ),
          ],
        ),
      )
    );
  }
}