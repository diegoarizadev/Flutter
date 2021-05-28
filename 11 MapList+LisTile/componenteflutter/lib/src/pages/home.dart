import 'package:flutter/material.dart';

class HomePageTmp extends StatelessWidget {
  int count = 0;
  final options = [
    'Opcion 1',
    'Opcion 2',
    'Opcion 3',
    'Opcion 4',
    'Opcion 5',
    'Opcion 6',
    'Opcion 7',
    'Opcion 8',
    'Opcion 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ListView(padding: const EdgeInsets.all(8), children: _corta()),
    );
  }

  void onTapList() {
    count++;
    print('Funcion OnTap $count');
  }

  List<Widget> _corta() {
    return options.map((item) {
      //La opcion map, convierte el array en un objecto iterable.
      return Column(
        children: [
          ListTile(
            leading: FlutterLogo(),
            title: Text(item),
            tileColor: Colors.blue[50],
            subtitle: Text('Este es un Subtitulo+'),
            selectedTileColor: Colors.red,
            trailing: Icon(Icons.more_vert),
            onTap: onTapList,
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      );
    }).toList();
  }
}
