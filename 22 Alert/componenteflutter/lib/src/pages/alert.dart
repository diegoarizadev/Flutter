import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  final strutStyleBar = new StrutStyle(
    //Instancia Objectos globales para ser reutilizados.
    fontSize: 20,
    fontStyle: FontStyle.italic,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert',
          strutStyle: strutStyleBar,
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ejecutar Alert!'),
          onPressed: () => _mostrarAlert(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, shape: StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
      ),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible:
            true, //Este es un parametro para permitir salir del alert en caso de tocar por fuera de el.
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text('Titulo Alert'),
            content: Column(
              mainAxisSize: MainAxisSize
                  .min, //Sin este paremetro la columna toma todo el espacio de la pantalla. al tomar la opcion .min ocupa el minimo posible
              children: [
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
                FlutterLogo(size: 90.0)
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pop(), //Función para cerrar el Alert
                  child: Text('Botón 1 Alert!')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, //Función para cerrar el Alert
                  child: Text('Botón 2 Alert!'))
            ],
          );
        });
  }
}
