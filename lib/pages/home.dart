//package
import 'package:flutter/material.dart';

//widgets 
import '../widgets/productos.dart';
import '../widgets/logo.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  //padding de botones
  final paddingBottom = 15.0;
  final textWhite = const Color(0xFFe0e0e0);  
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        backgroundColor: Colors.amber[600] ,
        title: new Text("TorOso Inversor"),        
      ),

      body: new ListView(
        children:<Widget>[                     
          LogoPrincipal(),
          ListaProductos()
        ],
      ),
    );
  }
}
