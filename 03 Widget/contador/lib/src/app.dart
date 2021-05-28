import 'package:contador/src/pages/home.dart';
import 'package:flutter/material.dart';

//creacion de un widget
class MyApp extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //context contiene todo el contexto del arbol de objectos, herencias
    return MaterialApp(
      //debe retornar un widget, MaterialApp widget para la configuracion global de la App
      home: Center(
        child: Home(),
      ),
    );
  }
}
