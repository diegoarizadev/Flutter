import 'package:flutter/material.dart';

class listViewCustom extends StatefulWidget {
  @override
  _listViewCustomState createState() => _listViewCustomState();
}

class _listViewCustomState extends State<listViewCustom> {
  List<int> _listNumbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        backgroundColor: Colors.green,
      ),
      body: _createList(),
    );
  }

  _createList() {
    return ListView.builder(
      //Encargado de renderizar todos los elementos, las veces que sea necesario
      itemCount: _listNumbers.length, //cantidad de items.
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listNumbers[index];
        print('Toma : $imagen');

        return FadeInImage(
          placeholder: AssetImage('assets/placeholder.gif'),
          image: NetworkImage('https://picsum.photos/id/$imagen/500/300'),
        );
      }, //Forma de como se va a dibujar el elemento
    );
  }
}
