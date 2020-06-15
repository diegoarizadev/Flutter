import 'package:flutter/material.dart';

//Statefulwidget, consta de dos clases
//1, Statefulwidget Clase como tal.
//2, Estado que va a manejar

class CountPage extends StatefulWidget {
  //1

  @override
  createState() => _CountPageState(); //retorna una instancia del contador.
}

class _CountPageState extends State<CountPage> {
  //2 Por Standar se debe color la palabra State!, con el _ se marca como privada, se debe especficiar que tipo  de Widget "StatefulWidget" va a manejar <>

  final _styleTittle = new TextStyle(
    //al agregar _ se vuelve privada.
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 25,
    fontStyle: FontStyle.normal,
    color: Colors.black,
  );

  final _styleSubTittle = new TextStyle(
      fontSize: 20, fontStyle: FontStyle.normal, color: Colors.red[300]);

  int _countClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold es la estructura de toda la pantalla.
      appBar: AppBar(
        title: (Text('Contador de Clicks - StatefulWidget')),
        centerTitle:
            true, //Para Android no se debe marcar esta propiedad, de lo contrario no queda centrado.
        elevation: 100.0, //Sombra debajo del AppBar.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //con esta propiedad centra el Widget en toda la pantalla.
          children: <Widget>[
            //Se pasa una lista de widgets.
            Text(
              'Número de Clicks ',
              style: _styleTittle,
            ),
            Text(
              '$_countClicks', //countClicks.toString(),//como es un Int, se convierte a String pero se puede interpolar con el signo $
              style: _styleSubTittle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, //Centra el botón en la pantalla.
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one), //Text('Toca'), // Se agrega un widget
          onPressed: () {
            print('Hola Mundo');
            setState(() {//funcion anonima, Se necesita para que redibuje los cambios en la pantalla.
              _countClicks +=1; //***El contador no aumenta en la interface del dispositivo ya que el widget es de tipo StatelessWidget.!
            });
            print('$_countClicks');
          } //Se declara una función anonima para la acción del botón.
          ), //Se agrega botón en la parte deregha inferior de la pantalla.
    );
  }
}
