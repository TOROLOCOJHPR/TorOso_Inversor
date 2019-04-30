//package
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class ResumenBolsa extends StatefulWidget {

  final titulo;
  final url;
  ResumenBolsa(this.titulo,this.url);

  @override
  ResumenBolsaState createState() => new ResumenBolsaState(titulo,url);
}

class ResumenBolsaState extends State<ResumenBolsa> {
  //padding de botones  
  final paddingBottom = 15.0;
  final textWhite = const Color(0xFFe0e0e0);
  var _isLoading = true;
  var _isDone = false;
  var _error = '';
  final titulo;
  final url;
  List listmap;

  ResumenBolsaState(this.titulo,this.url);

  _fetchBolsa() async {

    try{

      _isDone = false;

      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        
        final response = await http.get(url);
        
        print(response.statusCode);

        switch(response.statusCode){
          
          case 200:{
            Iterable result = json.decode(response.body);
            List map = result.toList();

            setState(() {
              this.listmap = map;
              _isLoading = false;
              _isDone = true;
            });

          //case 200
          }break;

          case 500:{
            setState(() {
              _isLoading = false;
              _error = 'error 500 (Error interno del servidor)';
            });
          //case 500
          }break;

          case 408:{
            setState(() {
              _isLoading = false;
              _error = 'error 408 (Se excedio el tiempo de espera)';  
            });
            
          //case 408
          }break;

          case 404:{
            setState(() {
              _isLoading = false;
              _error = 'error 404 (No se encontro el recurso solicitado)';  
            }); 
          //case 404  
          }break;
        
        //switch response.statusCode
        }

      //conection to internet
      }
    
    //try
    }on SocketException catch (_) {

      setState(() {
        _isLoading = false;
        _error = 'no se encontro conexión a internet';        
      });

    //on SocketException  
    }catch(e){

      setState(() {
        _isLoading = false;
        _error = 'intenta de nuevo';
      });

    //catch  
    }

  //fetchBolsa
  }

  @override
  void initState() {
    super.initState();    
    _fetchBolsa();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        backgroundColor: Colors.amber[600] ,
        title: new Text(titulo),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.refresh),
            onPressed: (){
              print("Reloading ...");
              setState(() {
                _isLoading = true;
              });
              _fetchBolsa();
            },
          )
        ],
      ),

      body: _isLoading ?                      
      new Center(
        
        child: new CircularProgressIndicator(),
      
      )
      :
      _isDone ?
      new ListView.builder(           
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 20),
        itemCount: this.listmap != null ? this.listmap.length : 0,
        itemBuilder: (context, i) {
          
          return Card(
            elevation: 1.5,
            
            child: ListTile(
        
              title: new Text(
                "SIMBOLO: " + this.listmap[i]['symbol'] + " -- " + this.listmap[i]['name']
              ),
              
              subtitle: new Text(
                  "POSICIÓN: " +
                  this.listmap[i]['position']
                  +
                    " -- FECHA: " +
                    this.listmap[i]['date']
              ),
                                                                                    
              leading:new Image.asset(
                'images/'+this.listmap[i]['position']+'.png',
                scale: 10,
              )
          
            )
          
          );
        
        }
    
      )

      :
      new Center(
        
        child: new Container( 
          padding: EdgeInsets.all(20),           
          child:new Text(
            'El sistema no pudo completar la acción, ' 
            + _error
            + ' ,recarga la página',
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 20,
              color:Colors.redAccent[200]          
            ),
          )
        
        )
      
      ),
  
    );
  }
}
