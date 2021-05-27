import 'package:flutter/material.dart'; //Este es el material grafico estandar

void main() {
  runApp(
      new MyApp()); //Inicializa la App. infla un widget para pintarlo en la pantalla.
}

//creacion de un widget
class MyApp extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //context contiene todo el contexto del arbol de objectos, herencias
    return MaterialApp(
      //debe retornar un widget, MaterialApp widget para la configuracion global de la App
      home: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
