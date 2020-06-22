import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, //Quita el banner "Debug"
      //definición de las rutas.
      initialRoute: '/', //Inicializador.
      routes: <String, WidgetBuilder>{ //Se pasa un mapa con las rutas.
      '/' : (BuildContext context) => HomePage(), //configuración de las rutas.
      'alert' : (BuildContext context) => AlertPage(),
      'avatar' : (BuildContext context) => AvatarPage(),
      },
    );
  }
} 