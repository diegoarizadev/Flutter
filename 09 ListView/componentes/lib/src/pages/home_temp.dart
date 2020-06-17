import 'package:flutter/material.dart';

class HomePageTmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp'),
      ),
      body: ListView(
        //implementación de un listView
        children: <Widget>[
          //recibe cualquier elemento o Widget
          ListTile( //Simula los elementos de una lista de contactos 'celdas'. 
            title: Text('List titulo'),
          ),
          Divider(),//Crea la linea o separacion entre las celdas, este objecto recibe cualquier tipo de Widget, así que la customización será más libre.
          ListTile(
            title: Text('List titulo'),
          ),
          Divider(),//Crea la linea o separacion entre las celdas.
          ListTile(
            title: Text('List titulo'),
          ),
          Divider(),//Crea la linea o separacion entre las celdas.
          ListTile(
            title: Text('List titulo'),
          ),
          Divider(),//Crea la linea o separacion entre las celdas.
          ListTile(
            title: Text('List titulo'),
          ),
        ],
      ),
    );
  }
}
