import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyAppN0rf3n());

class MyAppN0rf3n extends StatelessWidget {//StatelessWidget -> Hace la app un widget
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); //Generación random de palabras
    return MaterialApp(
      title: 'Welcome to App N0rf3n',
      home: Scaffold( //Provee una AppBar por defecto
        appBar: AppBar(
          title: Text('Welcome to Flutter N0rf3n'),
        ),
        body: Center(           
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}