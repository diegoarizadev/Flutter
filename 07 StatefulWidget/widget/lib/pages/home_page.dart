import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleTittle = new TextStyle(
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 25,
    fontStyle: FontStyle.normal,
    color: Colors.black,
  );

  final styleSubTittle = new TextStyle(
      fontSize: 20, fontStyle: FontStyle.normal, color: Colors.red[300]);


  int countClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold es la estructura de toda la pantalla.
      appBar: AppBar(
        title: (Text('Contador de Clicks')),
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
              'Número de Clicks',
              style: styleTittle,
            ),
            Text(
              '$countClicks',//countClicks.toString(),//como es un Int, se convierte a String pero se puede interpolar con el signo $
              style: styleSubTittle,
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
            countClicks += 1; //***El contador no aumenta en la interface del dispositivo ya que el widget es de tipo StatelessWidget.!
            print('$countClicks');
          } //Se declara una función anonima para la acción del botón.
          ), //Se agrega botón en la parte deregha inferior de la pantalla.
    );
  }
}
