import 'package:flutter/material.dart';

//Un widget es cualquier cosa para Flutter.
void main() => runApp(new AppN0rf3n()); //Infla el widget y lo muestra

class AppN0rf3n extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text('Esto es un widget'),
      ),
    );
  }
}
