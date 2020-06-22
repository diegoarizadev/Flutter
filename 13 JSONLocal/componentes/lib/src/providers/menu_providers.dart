import 'package:flutter/services.dart'
    show
        rootBundle; //Con esta opción se exponen un objecto especifico del paquete para ser usado en la clase.

class _MenuProvider {
  //Se crea privada ya que solo se neceitara una instancia de esta clase.
  List<dynamic> opcionesMenu = [];

  _MenuProvider() {
    loadData(); //Future Build
  }

  void loadData() {
    //Retorna un Future.
    //Lectura del archivo JSON
    rootBundle.loadString('data/menu_data.json').then((info) => print(
        info)); //Como es un Future, se obtniene la data del archivo Json y se envia a la consola temporalmente.
  }
}

final menuProvider = _MenuProvider(); //Esta clse, solo expone este objeto.
