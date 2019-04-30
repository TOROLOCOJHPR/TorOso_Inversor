import 'package:flutter/material.dart';


class LogoPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(top:16.0,bottom:30.0),
            child: new Container(
              height: 120.0,
              child: new Image.asset(
                'images/TorOso Inversor.png'
              ),
            )
          )
        ]
      );            
  }
}