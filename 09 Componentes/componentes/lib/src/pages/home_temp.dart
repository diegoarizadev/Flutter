import 'package:flutter/material.dart';

class HomePageTmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp'),
      ),
      body: ListView(//implementación de un listView
        children: <Widget>[//recibe cualquier elemento o Widget
          Text('Hola'),
        ],
      ),
    );
  }
}
