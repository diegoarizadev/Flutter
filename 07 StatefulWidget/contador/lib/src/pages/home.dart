import 'package:flutter/material.dart';

class Home extends StatelessWidget {
// Creacion de un estilo.
  final TextStyle styleCustomTittle = new TextStyle(
      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20);

  final TextStyle styleCustomtext = new TextStyle(
      fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, fontSize: 25);

  int count = 10;

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
              '$count',
              style: styleCustomtext,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Agregar'),
        onPressed: () {
          count++;
          print('Se ha presionado el botón $count');
        },
        icon: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
