import 'package:flutter/material.dart';
import 'package:widget/pages/home_page.dart';

class AppN0rf3n extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: new HomePage(), //Se crea un nuevo objecto para mostrar el contenido de la pantalla.
      ),
    );
  }
}