import 'package:flutter/material.dart';

class Home extends StatelessWidget {
// Creacion de un estilo.
  final TextStyle styleCustomTittle = new TextStyle(
      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20);

  final TextStyle styleCustomtext = new TextStyle(
      fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, fontSize: 25);

  @override
  Widget build(BuildContext context) {
    // este es un widget que tiene inmerso un Appbar (inferior), un Bar, un Action Button y ventanas laterales.
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo del App bar'),
        centerTitle: true,
        elevation: 50.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Números de clicks:', style: styleCustomTittle),
            Text(
              '0',
              style: styleCustomtext,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
