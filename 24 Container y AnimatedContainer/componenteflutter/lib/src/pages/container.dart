import 'dart:math';

import 'package:flutter/material.dart';

class ContainerCustom extends StatefulWidget {
  @override
  _ContainerCustomState createState() => _ContainerCustomState();
}

final strutStyleBar = new StrutStyle(
  //Instancia Objectos globales para ser reutilizados.
  fontSize: 20,
  fontStyle: FontStyle.italic,
);

final random = Random();

class _ContainerCustomState extends State<ContainerCustom> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.orange;
  BorderRadius _border = BorderRadius.circular(9.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor Animado', strutStyle: strutStyleBar),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _border),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_fill),
        onPressed: () {
          setState(() {
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
            _border = BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}
