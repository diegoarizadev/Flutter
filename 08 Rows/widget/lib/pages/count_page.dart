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
        floatingActionButton:
            _createButtons() //Se agrega los botones en la parte derecha inferior de la pantalla.
        );
  }

  Widget _createButtons() {
    return Row(
      //Objecto Filas
      mainAxisAlignment:
          MainAxisAlignment.end, //End será la parte final de la fila
      children: <Widget>[
        SizedBox(
          //Agrega separaciones entre los elementos o FloatingActionButton
          width: 30,
        ),
        FloatingActionButton(
          onPressed:
              reset, //no se colocan los parentesis ya que se necesita ejecutar la acción a demanada, por ende solo se envia la referencia.
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          //Agrega un efecto de separación entre el primer botón y los otros.
          child: SizedBox(
              //el metodo puede quedar null, ya que solo separar los elementos
              //Agrega separaciones entre los elementos o FloatingActionButton
              ),
        ),
        FloatingActionButton(
          onPressed:
              subtract, //no se colocan los parentesis ya que se necesita ejecutar la acción a demanada, por ende solo se envia la referencia.
          child: Icon(Icons.remove),
        ),
        SizedBox(
          //Agrega separaciones entre los elementos o FloatingActionButton
          width: 8.0,
        ),
        FloatingActionButton(
          onPressed:
              sum, //no se colocan los parentesis ya que se necesita ejecutar la acción a demanada, por ende solo se envia la referencia.
          child: Icon(Icons.plus_one),
        )
      ],
    );
  }

  void sum() {
    setState(() {
      //Función de los StatefulWidget
      _countClicks++;
    });
  }

  void reset() {
    setState(() {
      //Función de los StatefulWidget
      if (_countClicks > 0) {
        _countClicks = 0;
      }
    });
  }

  void subtract() {
    setState(() {
      //Función de los StatefulWidget
      if (_countClicks > 0) {
        _countClicks--;
      }
    });
  }
}
