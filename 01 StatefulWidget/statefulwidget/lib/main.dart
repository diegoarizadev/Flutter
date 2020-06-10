import 'package:flutter/material.dart';

void main() => runApp(MyAppN0rf3n());

class MyAppN0rf3n extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to App N0rf3n',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter N0rf3n'),
        ),
        body: Center(
          child: Text('Hello World.'),
        ),
      ),
    );
  }
}