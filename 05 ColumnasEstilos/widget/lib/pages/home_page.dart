import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleTittle = new TextStyle(
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 20,
    fontStyle: FontStyle.normal,
    color: Colors.black,
  );

  final styleSubTittle = new TextStyle(
      fontSize: 15, fontStyle: FontStyle.normal, color: Colors.red[300]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold es la estructura de toda la pantalla.
      appBar: AppBar(
        title: (Text('Titulo AppBar')),
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
              'Texto 1',
              style: styleTittle,
            ),
            Text(
              'Texto 2',
              style: styleSubTittle,
            ),
          ],
        ),
      ),
    );
  }
}
