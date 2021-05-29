import 'package:componenteflutter/src/pages/alert.dart';
import 'package:componenteflutter/src/routes/routes.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Ocultar el Banner de debug
      title: 'Componentes Flutter',
      initialRoute: '/',
      routes: getApplicationsRouters(),
      onGenerateRoute: (RouteSettings setting) {
        print('Ruta ejecutada ${setting.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
