import 'package:flutter/material.dart';

class HomePageTmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('ListTitlle'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTitlle'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTitlle'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
