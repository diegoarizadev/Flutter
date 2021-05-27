import 'package:flutter/material.dart';

// Creacion de un estilo.
final TextStyle styleCustomTittle = new TextStyle(
    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20);

final TextStyle styleCustomtext = new TextStyle(
    fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, fontSize: 25);

int _count = 0;

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorState();
}

// Controla el estado de la clase.
class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    // este es un widget que tiene inmerso un Appbar (inferior), un Bar, un Action Button y ventanas laterales.
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        centerTitle: true,
        elevation: 50.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Números de clicks o taps:', style: styleCustomTittle),
            Text(
              '$_count',
              style: styleCustomtext,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Agregar'),
        onPressed: () {
          setState(() {
            //Este metodo, redibuja todo el Widget.
            _count++;
            print('Se ha presionado el botón $_count');
          });
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
