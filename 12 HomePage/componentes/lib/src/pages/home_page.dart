import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final strutStyleBar = new StrutStyle(
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 20,
    fontStyle: FontStyle.italic,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomePage',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      body: _listCustom(),
    );
  }

  Widget _listCustom() {
    return ListView(
      children: _itemsLista(),
    );
  }

  List<Widget> _itemsLista() {
    return [
      ListTile(title: Text('A')),
      Divider(),
      ListTile(title: Text('A')),
      Divider(),
      ListTile(title: Text('A')),
      Divider(),
      ListTile(title: Text('A')),
      Divider(),
    ];
  }
}
