import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_providers.dart';
import 'package:componentes/src/utils/icons_string.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo App Bar'),
      ),
      body:
          _listCustom(), //Metodo para crear el widget a retornar, en este caso un ListView
    );
  }

  Widget _listCustom() //Body del Scaffold
  {
    /*IMPLEMENTACION DEL FUTURE BUILDER*
    
    Un future tiene 3 estados

    1. Pidiendo informacion 
    2. Cuando resuelve  
    3. Error 

     */

    return FutureBuilder(
      future:
          menuProvider //Esta enlazado o lo que estamos esperando, ejemplo loadData de tipo Future
              .loadData(),
      initialData: [], //Información que va a conterner mientras espera la información
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        /*    
      Este builder se ejecutara en las 3 etapas

      1. Pidiendo informacion 
      2. Cuando resuelve  
      3. Error 
      */

        print(snapshot.data); //snapshot.data contiene la data del JSON
        return ListView(
          children: _itemsList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _itemsList(List<dynamic> snapshotData,
      BuildContext context) //Retorna los items o celdas de la lista.
  {
    double heightCell = 15.0;

    final List<Widget> opciones = [];

    snapshotData.forEach((item) {
      final cell = ListTile(
        title: Text(item['texto']),
        leading: getIconString(item['icon']),
        trailing: Icon(Icons.arrow_back, color: Colors.green),
        onTap: () {

          Navigator.pushNamed(context, item['ruta']); //Se llama al pushNamed el cual esta definido en el Main de la aplicación.

        },
      );

      opciones
        ..add(cell)
        ..add(
          Divider(
            height: heightCell, //Define el alto del divisor.
            color: Colors.blue, //Define el color del divisor.
          ),
        );
    });

    return opciones;
  }
}
