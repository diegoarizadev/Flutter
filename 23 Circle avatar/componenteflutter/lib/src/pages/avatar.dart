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
        actions: [
          Container(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://st4.depositphotos.com/27867620/30730/v/600/depositphotos_307309712-stock-illustration-godfather-web-icon-vector-illustration.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('DA'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
        title: Text(
          'Avatars',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://avatarfiles.alphacoders.com/159/159736.jpg'),
          placeholder: AssetImage('assets/placeholder.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
