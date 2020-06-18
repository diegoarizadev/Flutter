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
    return ListView(
      children: _itemsList(),
    );
  }

  List<Widget> _itemsList() //Retorna los items o celdas de la lista.
  {

    double heightCell = 15.0;
    return [
      ListTile(
        title: Text('Item A'),
      ),
      Divider(
        height: heightCell, //Define el alto del divisor.
        color: Colors.blue, //Define el color del divisor.
      ),
      ListTile(
        title: Text('Item A'),
      ),
      Divider(
        height: heightCell, //Define el alto del divisor.
        color: Colors.blue, //Define el color del divisor.
      ),
      ListTile(
        title: Text('Item A'),
      ),
      Divider(
        height: heightCell, //Define el alto del divisor.
        color: Colors.blue, //Define el color del divisor.
      )
    ];
  }
}
