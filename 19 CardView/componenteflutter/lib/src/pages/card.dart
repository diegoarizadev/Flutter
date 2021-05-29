import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
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
          'Cards',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_cardsOne()],
      ),
    );
  }

  Widget _cardsOne() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green),
            title: Text('ABC'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Boton A'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Boton B'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
