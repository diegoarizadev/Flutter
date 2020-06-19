import 'dart:convert';
import 'package:flutter/services.dart'
    show
        rootBundle; //Con esta opción se exponen un objecto especifico del paquete para ser usado en la clase.

class _MenuProvider {
  //Se crea privada ya que solo se neceitara una instancia de esta clase.
  List<dynamic> opcionesMenu = [];

  _MenuProvider() {
    loadData(); //Future Build
  }

  Future <List<dynamic>> loadData() async { //Retorna un Future
    //Lectura del archivo JSON
    final response = await rootBundle.loadString('data/menu_data.json');

      Map dataMap = json.decode(response);
      print(dataMap['nombreApp']);
      print(dataMap['rutas']);
      opcionesMenu = dataMap['rutas']; //convierte el JSON en un List
     
     return opcionesMenu;
  }
}

final menuProvider = _MenuProvider(); //Esta clse, solo expone este objeto.
