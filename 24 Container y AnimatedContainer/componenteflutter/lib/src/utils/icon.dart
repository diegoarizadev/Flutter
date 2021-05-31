import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  //Objecto de tipo mapa
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'build_circle': Icons.build_circle
};

Icon getIcon(String nameIcon) => Icon(
      _icon[nameIcon],
      color: Colors.green,
    );
