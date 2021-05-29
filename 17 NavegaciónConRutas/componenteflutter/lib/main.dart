import 'package:componenteflutter/src/pages/alert.dart';
import 'package:componenteflutter/src/pages/avatar.dart';
import 'package:componenteflutter/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Ocultar el Banner de debug
      title: 'Componentes Flutter',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePageTmp(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvartarPage()
      },
    );
  }
}
