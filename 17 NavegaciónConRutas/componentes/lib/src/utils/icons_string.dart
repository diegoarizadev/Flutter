import 'package:flutter/material.dart';

final _icons = <String, IconData >{ //se define como un mapa
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
};

//Función para obtener un iconono apartir de un nombre.
Icon getIconString (String name) => Icon(_icons[name], color: Colors.green,);