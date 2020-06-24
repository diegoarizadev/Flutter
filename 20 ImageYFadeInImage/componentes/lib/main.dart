import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
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
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        //Como se invoca una ruta que no esta definida se disparara el MaterialPageRoute
        print(
            'Ruta invocada ${settings.name}'); //imprime el nombre de la ruta que esta invocando o solicitando.
        return MaterialPageRoute(
            //retorna a una pagina.
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
