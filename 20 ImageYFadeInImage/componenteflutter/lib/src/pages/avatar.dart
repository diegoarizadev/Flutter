import 'package:flutter/material.dart';

class AvartarPage extends StatelessWidget {
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
          'Avatars',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      body: ListTile(),
    );
  }
}
