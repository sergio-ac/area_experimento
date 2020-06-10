import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PruebasPage extends StatefulWidget{
  @override 
  _PruebasPageState createState()=> _PruebasPageState();
  
}
class _PruebasPageState extends State<PruebasPage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: new Text("Pruebas"),backgroundColor:Colors.pinkAccent),
      body:
      Column(
        children: <Widget>[
          Text("Bienvenido"),
          
        ],
      ), 
      ListView(
      // scrollDirection: Axis.horizontal,
        children: <Widget>[
          PruebaItemWidget(
            title: "Mochila",            
            imagePath: "assets/mochila.jpg",
            price: "\$ 150",
            
          ),
          PruebaItemWidget(
            title: "Mordedera",
            imagePath: "assets/mordedera.jpg",
            price: "\$ 100",
            
          ),
          PruebaItemWidget(
            title: "Sandalias",
            imagePath: "assets/sandalias.jpg",
            price: "\$ 50",
            
          ),
        ],

        ),

      );
  }
}

class PruebaItemWidget extends StatelessWidget{
  final String title;
  final String imagePath;
  final String price;
  

  const PruebaItemWidget({Key key, this.title, this.imagePath, this.price}) 
  : super(key: key);
  @override 
  Widget build (BuildContext context ){
    return Container(
      
      height: 350,
      child: Padding(
        padding : const EdgeInsets.all(32.0),
        child: Stack(
        children: <Widget>[
          Positioned (
            left: 0,
            right:0,
            top: 0,            
              child: new Text(title,textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 10,
                fontWeight: FontWeight.w700,
              ),
              ),            
          ),
          Positioned (
            left: 0,
            right: 0,
            bottom: 0,            
            child:new  Text (price,textAlign: TextAlign.center,
            style:TextStyle(
              letterSpacing: 10,
              fontWeight: FontWeight.w700,
            ),
            ),            
          ),
                             
        RotatedBox (
          
          quarterTurns: 0,
          child : Center (
          child:           
          Image.asset(imagePath,height: 400.0,width: 400.0,),
        ),
        ),
        
        
      ],
      ),
      ),
      
    );
  }
}