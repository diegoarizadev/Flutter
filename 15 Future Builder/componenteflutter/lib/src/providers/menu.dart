import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    //Cuando se halla consumido el archivo, se contruira la parte grafica.
    final response = await rootBundle.loadString('data/menu.json');

    Map dataMap = json.decode(response);
    options = dataMap['rutas'];

    return options;
  }
}

final menuProvider = new _MenuProvider(); //Solo se expone esta instancia.
