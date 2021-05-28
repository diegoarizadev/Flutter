import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  void loadData() {
    rootBundle.loadString('data/menu.json').then((data) => print(data));
  }
}

final menuProvider = new _MenuProvider(); //Solo se expone esta instancia.
