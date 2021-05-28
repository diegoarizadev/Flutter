import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  loadData() {
    rootBundle.loadString('data/menu.json').then((data) {
      Map dataMap = json.decode(data);
      print(dataMap['nombreApp']);
      print(dataMap['rutas']);
      options = dataMap['rutas'];
    });
  }
}

final menuProvider = new _MenuProvider(); //Solo se expone esta instancia.
