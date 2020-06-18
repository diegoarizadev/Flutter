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
          //children: _createlist()), //Items o celdas de la list a mostrar.
          children: _createshortlist()),
    );
  }

  List<Widget> _createlist() {
    List<Widget> list = new List<
        Widget>(); // como no se define un largo se convierte una lista dinamica.

    //Recorrer la lista elementsList

    for (String item in elementsList) {
      //El tipo de objeto es String.!

      final listFinal = ListTile(
        //Se define el objeto o Celdas de la lista para almacenar la información.
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

  List<Widget> _createshortlist() {
    return elementsList.map(
        //retorna una lista iterable, donde cada elemento pasa por la función anonima.
        (item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Información de tipo Subtitulo'),
            leading: //agrega un icono al inicio de la celda.
                Icon(Icons.add_to_queue),
            trailing: //agrega un icono al final de la celda.
                Icon(Icons.arrow_forward_ios),
            onTap: () {}, //Función para el click de la celda
          ),
          Divider(
            height: 20.0, //Define el alto del divisor.
            color: Colors.red, //Define el color del divisor.
          )
        ],
      );
    }).toList(); //Se utiliza el toList para retornar una lista de ListTile
  }
}
