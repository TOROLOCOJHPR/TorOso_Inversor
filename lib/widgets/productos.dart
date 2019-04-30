import 'package:flutter/material.dart';
import 'package:jdfinanzas/views/resumenBolsa.dart';

class ListaProductos extends StatelessWidget {
  
  final txtButtonSize = 18.0; 
  
  @override
  Widget build(BuildContext context) {
  
    return new Column(
  
      children: <Widget>[
        Card(
          color: Colors.amber[100],
          elevation: 3,
          child:Column(
            
            children:<Widget>[
              Container(
                padding: EdgeInsets.only(top:10,bottom:0), 
                child: 
                Text(
                  "Materia Prima",
                  style: new TextStyle(
                    fontSize: 30
                  ),
                ),
              ),

              Card(
                //width: 250,
                margin: EdgeInsets.all(10),    
                color:Colors.amber,  
                child:
                ListTile(
                  dense: true,
                  title:Text(
                    'MATERIA PRIMA',
                    style: new TextStyle(
                      fontSize: txtButtonSize,
                      color: Colors.black54
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    final titulo = "MATERIA PRIMA";
                    final url  = "https://proyectolazalde-231209.appspot.com/";
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResumenBolsa(titulo,url)
                      )
                    );
                  },
                )
              ),
            ]
          )    
        ),

        Card(
          elevation: 3,
          color: Colors.amber[100],
          child:Column(

            children:<Widget>[
              Container(
                padding: EdgeInsets.only(top:15),
                child:
                Text(
                  "Mercado Forex",
                  style: new TextStyle(
                    fontSize: 30,          
                  ),
                ),
              ),
              
              Card(
                margin: EdgeInsets.all(10),
                color:Colors.amber,    
                child:
                ListTile(
                  dense:true,            
                  title:new Text(
                    'FOREX 1',
                    style: new TextStyle(
                      fontSize: txtButtonSize,
                      color: Colors.black54
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    final titulo = "FOREX 1";
                    final url  = "https://proyectolazalde-231209.appspot.com/forex/1";
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResumenBolsa(titulo,url)
                      )
                    );  
                  },          
                )
              ),

              Card(
                margin: EdgeInsets.all(10),
                color:Colors.amber,    
                child:
                ListTile(
                  dense:true,            
                  title:new Text(
                    'FOREX 2',
                    style: new TextStyle(
                      fontSize: txtButtonSize,
                      color: Colors.black54
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){
                    final titulo = "FOREX 2";
                    final url  = "https://proyectolazalde-231209.appspot.com/forex/2";
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResumenBolsa(titulo,url)
                      )
                    );
                  },          
                )
              ),

              Card(
            margin: EdgeInsets.all(10),
            color:Colors.amber,    
            child:
            ListTile(
              dense:true,            
              title:new Text(
                'FOREX 3',
                style: new TextStyle(
                  fontSize: txtButtonSize,
                  color: Colors.black54
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                final titulo = "FOREX 3";
                final url  = "https://proyectolazalde-231209.appspot.com/forex/3";
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResumenBolsa(titulo,url)
                  )
                );  
              },          
            )
          )
            ]
          )        
        )


      ]
      
    );
  }
}