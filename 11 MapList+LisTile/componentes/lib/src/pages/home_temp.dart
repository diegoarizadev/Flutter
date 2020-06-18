import 'package:flutter/material.dart';

class HomePageTmp extends StatelessWidget {
  final elementsList = ['A', 'B', 'C', 'D', 'E'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp'),
      ),
      body: ListView(
          //implementación de un listView
          children: _createlist()), //Items o celdas de la list a mostrar.
    );
  }

  List<Widget> _createlist() {
    List<Widget> list = new List<
        Widget>(); // como no se define un largo se convierte una lista dinamica.

    //Recorrer la lista elementsList

    for (String item in elementsList) {
      //El tipo de objeto es String.!

      final listFinal = ListTile(
        //Se define el objecto o Celdas de la lista para almacenar la información.
        title: Text(item),
      );

      //list.add(listFinal); //El objeto listFinal debe ser agregado/insertado al elemento list
      //list.add(Divider());//Se agrega la linea para dividir las celdas

      //**OPERADOR DE CASCADA EN DART  */ Agrega varios elementos con el doble ..
      list
        ..add(listFinal)
        ..add(Divider(
          height: 50.0, //Define el alto del divisor.
          color: Colors.blue, //Define el color del divisor.
        ));
    }

    return list;
  }
}
