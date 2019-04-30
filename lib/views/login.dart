import 'package:flutter/material.dart';
//import './registrar.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  //está es justo una expresión regular para direcciones email
  String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})";

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
          
          child: new Center(

            child: new Wrap(
              children:<Widget>[

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 70.0,
                  child: new Text(
                    'OSO, TORO, FINANZAS',
                    style: TextStyle(
                        fontSize:30.0,fontWeight:FontWeight.bold
                    ),textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            // email
            new ListTile(
              leading: const Icon(Icons.email),
              title: new TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                
                    return "Introduce un email";
                
                  }else{

                    //validamos que el campo sea un email valido
                    RegExp regExp = new RegExp(p);
                    //si no es valido
                    if (!regExp.hasMatch(value)) {
                      return "Introduce un email valido";
                    }//if
                
                  }//else
                  
                },//validator
                onSaved:(value)=> _email = value,
                decoration: new InputDecoration(
                  hintText: "Correo electrónico",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            // email

            // contraseña
            new ListTile(
              leading: const Icon(Icons.vpn_key),
              title: new TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "introduce una contraseña";
                  }
                },
                onSaved: (value) => _password = value,
                obscureText: true,
                decoration: new InputDecoration(
                  hintText: "Contraseña",
                ),
              ),
            ),
            // contraseña


            // submit
            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Padding(padding:EdgeInsets.only(bottom:80.0)),
                
                // registrar
                new Container(
                  child:new FlatButton(
                    color: Colors.transparent,
                    onPressed: (){
                      /*Navigator.push(context,
                        MaterialPageRoute(
                          builder:(context)=> Registrar(),
                        )
                      );*/
                    },
                    child: new Text('Registrate'),
                  ),
                ),
                //registrar

                //acceder
                new Container(
                  margin: EdgeInsets.only(left: 10.0,right:20.0),
                  child:new RaisedButton(
                    color: Colors.purple[400],
                    textColor: Colors.white,
                    onPressed: (){
                      new CircularProgressIndicator();
                      //Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      final form = _formKey.currentState;
                      if (form.validate()) {
                        form.save();
                        // print( "email $_email password $_password ");
                        // If the form is valid, we want to show a Snackbar
                        // Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data'));
                        Navigator.pushReplacementNamed(context, "/perfil");
                        // _fetchData();
                      }
                    },
                    child: new Text('Acceder'),
                  ),
                ),
                // acceder

              ],

            ),
            //submit

          ]
        ),
      
      ),

    );//form
  
  }//widget

}//login state