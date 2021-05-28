import 'package:flutter/material.dart';

// Creacion de un estilo.
final TextStyle styleCustomTittle = new TextStyle(
    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20);

final TextStyle styleCustomtext = new TextStyle(
    fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, fontSize: 25);

final TextStyle styleFloatingButton =
    new TextStyle(fontWeight: FontWeight.bold, color: Colors.black);

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
      floatingActionButton: _createFloatingButton(),
    );
  }

  Widget _createFloatingButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(
        width: 30,
      ),
      FloatingActionButton(
        child: Icon(
          Icons.exposure_zero,
          color: Colors.black,
        ),
        onPressed: _resetCount,
      ),
      SizedBox(
        width: 5,
      ),
      FloatingActionButton(
        child: Icon(
          Icons.remove,
          color: Colors.black,
        ),
        onPressed: _deleteCount,
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton.extended(
        onPressed: _addCount,
        label: Text('Agregar', style: styleFloatingButton),
        icon: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.blue,
      ),
    ]);
  }

  void _addCount() {
    setState(() {
      _count++;
    });
  }

  void _resetCount() {
    setState(() {
      if (_count > 0) {
        _count = 0;
      }
    });
  }

  void _deleteCount() {
    setState(() {
      if (_count > 0) {
        _count--;
      }
    });
  }
}
