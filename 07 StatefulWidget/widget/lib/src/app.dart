import 'package:flutter/material.dart';
import 'package:widget/pages/count_page.dart';

class AppN0rf3n extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Elimina la cinta roja "DEBUG"
      home: Center(
        child: new CountPage(), //Se agrega el componente de tipo Statefulwidget
        //new HomePage(), //Se crea un nuevo objecto para mostrar el contenido de la pantalla.
      ),
    );
  }
}