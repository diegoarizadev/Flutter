import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
        child: Text('Texto en el centro de la vista'),
      ),
    );
  }
}
