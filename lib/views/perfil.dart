//package
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//views
/*import './productos.dart';
import './nuevos-lanzamientos.dart';
import './promociones-exclusivas.dart';
import './mis-pedidos.dart';
import './cotizador.dart';*/


class PerfilPage extends StatefulWidget {

  @override
  PerfilPageState createState()=> new PerfilPageState();

}

class PerfilPageState extends State<PerfilPage>{

  //padding de botones
  final paddingBottom = 15.0;
  final textWhite = const Color(0xFFe0e0e0);
  var perfilImage = "";
  var perfilNombre = "";
  
  _fetchPerfil() async{
    final url = "https://proyectolazalde-231209.appspot.com/";
    final response =  await http.get(url);
    /*  final response =  await http.get(
      Uri.encodeFull(url),
      headers:{"Accept":"application/json"}
      );*/
    if (response.statusCode == 200){
      //var srcImagePerfil;
      final result = jsonDecode(response.body);
      /*if (result[0]['imagen'] == ""){
        srcImagePerfil = "http://apitesiutto.jbcatalogo.com/img/no-profile.png";
      }else{
        srcImagePerfil = result[0]['imagen'];
      }*/
      /*setState((){
        perfilImage = srcImagePerfil;
        perfilNombre = result[0]['nombre'];
      });*/
    }
  }//_fetchPerfil
    
  @override
  void initState() {
      super.initState();
      print('void');
      _fetchPerfil();
  }

  @override
  void dispose() {
      super.dispose();
  }



  // PerfilPage(){
  //   print('perfil construct');
  //   _fetchPerfil();
  // }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[400],
        title: new Text('Perfil usuario'),
      ),
      body:  new Container(
        /*child: new ListView(
          children: <Widget>[
          
            //logo tesiutto
            Column(
              children:<Widget>[

              Padding(
                padding: EdgeInsets.only(top:16.0,bottom:30.0),
                child: new Container(
                  height: 50.0,
                  child: new Image.asset(
                    'images/logo.png'
                  ),
                ),
              ),
              ]
              ),
            
            //imagen de usuario
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom:20.0),
                  child: new Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                          '$perfilImage'
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            //nombre de usuario
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom:40.0,left:20.0,right:20.0),
                  child: new Center(
                    child:new Text(
                      '$perfilNombre',
                      style: TextStyle(
                        fontSize:20.0,fontWeight:FontWeight.bold
                      ),textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            
            //botón productos
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom:paddingBottom),
                  child: new ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      color:Colors.red[400],
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Productos()
                          )
                        );
                      },
                      child: new Text(
                        'Productos',
                        style: new TextStyle(
                          color: textWhite,
                          fontSize:20.0
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),            
            
            //botón nuevos lanzamientos
            Column(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(bottom:paddingBottom),
                  child: new ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      color:Colors.red[400],
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NuevosLanzamientos()
                          )
                        );
                      },
                      child: new Text(
                        'Nuevos lanzamientos',
                        style: new TextStyle(
                          color: textWhite,
                          fontSize:20.0
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //botón promociones exclusivas
            Column(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(bottom:paddingBottom),
                  child: new ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      color:Colors.red[400],
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PromocionesExclusivas()
                          )
                        );
                      },
                      child: new Text(
                        'Promociones exclusivas',
                        style: new TextStyle(
                          color: textWhite,
                          fontSize:20.0
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //botón cotizador
            Column(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.only(bottom:paddingBottom),
                  child: new ButtonTheme(
                    minWidth: 300.0,
                    child: RaisedButton(
                      color:Colors.red[400],
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cotizador()
                          )
                        );
                      },
                      child: new Text(
                        'Cotizador',
                        style: new TextStyle(
                          color: textWhite,
                          fontSize:20.0
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          
          ],
        ),*/
      ),
    );
  }
}