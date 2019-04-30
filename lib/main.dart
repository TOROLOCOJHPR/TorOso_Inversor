import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/home.dart';
//import './login/login.dart';

/*class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PerfilPage();
  }
}*/

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   backgroundColor: Colors.red[400],
      //   title: new Text("Distribuidores"),
      // ),
      body: HomePage(),
    );
  }
}

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new HomePage(),
      /*routes: {
        "/perfil": (_) => new Perfil(),
      },*/
    );
  }
}










