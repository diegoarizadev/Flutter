import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold es la estructura de toda la pantalla.
      appBar: AppBar(
        title: (Text('Titulo AppBar')),
        centerTitle: true, //Para Android no se debe marcar esta propiedad, de lo contrario no queda centrado.
        elevation: 100.0, //Sombra debajo del AppBar.
      ),
      body: Center(
        child: Text('Esto es un widget'),
      ),
    );
  }
}
