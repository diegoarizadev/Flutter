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
        children: <Widget>[
          _cardsOne(),
          SizedBox(
            height: 30.0,
          ),
          _cardsTwo(),
        ],
      ),
    );
  }

  Widget _cardsOne() {
    return Card(
      elevation: 10.0, //Sombra de la tarjeta
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)), //Borde de la tarjeta
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

  Widget _cardsTwo() {
    return Card(
      //Implementacion de un placeholders
      clipBehavior: Clip.antiAlias,
      elevation: 10.0, //Sombra de la tarjeta
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)), //Borde de la tarjeta,
      shadowColor: Colors.red, //Sombra de la tarjeta
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/placeholder.gif'),
            image: NetworkImage(
                'https://elpelicultista.com/images/el-padrino.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
            height: 300.0,
          ),
          Container(padding: EdgeInsets.all(2.0), child: Text('El Padrino')),
        ],
      ),
    );
  }
}
